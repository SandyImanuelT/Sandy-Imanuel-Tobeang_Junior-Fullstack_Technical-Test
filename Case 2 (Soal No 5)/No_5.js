type IComment = {
  commentId: number;
  commentContent: string;
  replies?: IComment[];
};

const comments: IComment[] = [
  {
    commentId: 1,
    commentContent: 'Hai',
    replies: [
      {
        commentId: 11,
        commentContent: 'Hai juga',
        replies: [
          {
            commentId: 111,
            commentContent: 'Haai juga hai jugaa'
          },
          {
            commentId: 112,
            commentContent: 'Haai juga hai jugaa'
          }
        ]
      },
      {
        commentId: 12,
        commentContent: 'Hai juga',
        replies: [
          {
            commentId: 121,
            commentContent: 'Haai juga hai jugaa'
          }
        ]
      }
    ] 
  },
  {
    commentId: 2,
    commentContent: 'Halooo'
  }
];

// Fungsi untuk menghitung total komentar dan balasannya
function countTotalComments(comments: IComment[]): number {
  let totalCount = 0;

  comments.forEach((comment) => {
    totalCount++; // 
    if (comment.replies && comment.replies.length > 0) {
      totalCount += countTotalComments(comment.replies); // Menghitung balasan komentar
    }
  });

  return totalCount;
}

// Menghitung total komentar berdasarkan data yang diberikan
const totalComments = countTotalComments(comments);
console.log("Total komentar adalah:", totalComments); // Total komentar = 7
