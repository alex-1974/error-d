# Safety notes

The [post-v0.1 review](security-review.md) supersedes the initial v0.1 audit.
It includes baseline reproductions, four concrete findings, implementation
corrections, source-copy restrictions and an updated review of every trusted
operation. Passing compiler checks alone did not reveal those adversarial cases.

The implementation uses private SumType storage, no custom raw union. Qualified
copying, safe cleanup/transfer, release-mode checked access, @mustuse and
DIP1000 remain compiler/test-checked for the supported operations. This is not a
formal proof or an independent audit; see the review for the precise boundaries.
