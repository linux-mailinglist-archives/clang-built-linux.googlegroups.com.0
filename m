Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBKGH5DWAKGQEBEWWGVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id C8CF6CD470
	for <lists+clang-built-linux@lfdr.de>; Sun,  6 Oct 2019 19:26:01 +0200 (CEST)
Received: by mail-io1-xd39.google.com with SMTP id q18sf22910081ios.8
        for <lists+clang-built-linux@lfdr.de>; Sun, 06 Oct 2019 10:26:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570382760; cv=pass;
        d=google.com; s=arc-20160816;
        b=oVdRsa19x+I8fUYT5YDGjLFwTIU8qOqtafZNHeqA3JRjYB/nfMp6fixxmH9SjLh3GQ
         lajyCul6JF8Zwiyi35/zKTQ9p/KTs4Qdr9pCrK9okFRMa+andP/uinPs7WFuZH/w5lBs
         7BrzCIW1ySDs26lW4Mmwi5jzrwr2NFbyiSebcvWVKGYlS5qxD8XL+AnwBe7+VO2x6rik
         cMEmR9nt9HT3qv5Lmet5pFNeEadquDc7OKvoD7DmJs2/O3k9j5FXro1NkYkszumjCL4r
         KMhzuJSwvsyVYIcxJLSclPP2IJpPTMHJrZbmJ+IbSxGAJ1vhzUVbFo2rtunn5kmz7E6+
         j6Wg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=fGnyjvuIDXXxlHpOSntD/JEcNNd4j9li1yzh0YCbBxM=;
        b=tK0q47Lzt4KXo0AIF6s/wHgLsb0Xm1+rquPo4MhDfAtPjKrbuqfmUjH7xrpO1oQG90
         Gf1DKESZRIS995pBPDpTqsfl9DpS7w8hp0W3KJN5oyuygz0gCwqGkl/P1MLpHH4GQEN2
         enUthJLJlTHmOZO/mWWVeedOCXjACr+VMRMHa1OztN6Vb7eL9Ow6BMkTRbcotHi+yeHE
         zodx2c90ZDGv6mYL7HSyzWO56fZrmuFkOx4ZNovmc8FdIKML6Q/UnYFvajwHK/jgBUFz
         tZdrQkUOcT+/E+/hYXy5FGJu+MB3CTkWQBQgS4BX7WwXDqz//BrvinnLJe4+VHBliomO
         Kk8g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=UpE+fOHo;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fGnyjvuIDXXxlHpOSntD/JEcNNd4j9li1yzh0YCbBxM=;
        b=OALPHLd6DXCcvJULM8Y914K2j/JSf83SLuezkZu5suUC8sYRfF9AbszQzIkOZFnDMw
         zlzRf5l8xyhmlbLmH94XGuOCAaMIJxXKTSj7JOqgWz7DyUHq8jLUJk7y1VRFITRy1P8G
         n1t3/90pKJNQaA50mDAZUi2uLiuYam4XE8gCDD9YjdZji8CL3GpAKK5oP6QenCH0dnqX
         n4ZdA4/6YkbicINNP6oZ10OAeuCtm4tUvdA/6C/ZzptJK+oY2YfG4HD3fUU0aO6O7y06
         02YmVeOwto49C3MS34AaBppflPbxOjGUn35l1bXVM5Q38Srk3xz+YPbJFeBJU52N1s/r
         ocrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fGnyjvuIDXXxlHpOSntD/JEcNNd4j9li1yzh0YCbBxM=;
        b=MUuU2yBItP7krVVjXulKPVuTlM7fNUacyxWYV5hvfDk05kcmbISQa2m6ec29H8xgmR
         cRSo38a9ppy/a+vKt2tMBUot41nRX5ss5syASbNHPDC2p28WlrECiFQLHMDAyXeDd9L6
         JF9sbRvNegsD0P2/okCrTu3tHlOQuobgTFprqxQuGc8u3CDKoZJmQYF8L1/hL0hFdEzA
         7C+mzAKayw4qp1cV8r5WM2vJzcCVvb/lXeYqVHmsKMt0Nw0TNBr+Ao5FQONEREsKFt3a
         x+zCbKmOLynUt7YdiMhvehqJFW+Wj+CvWjUhP/rNmAZ5HOvS4TpatFtx0pcQqYsU/Sn9
         ZMDQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUd7OWVFgHv0UpRlkn5R3rCOSvRThsCERiUaprFXcjU8ksQHv48
	I18j2HZpSs+1MaA26NIxnwo=
X-Google-Smtp-Source: APXvYqwE7TBMMyrw15XRhJlPDcIN57Sc/FAD5tDyKzKGI1MRVuHEQSS8o3M/5xejcxTdP4w6uqd4Nw==
X-Received: by 2002:a92:4909:: with SMTP id w9mr26481303ila.225.1570382760404;
        Sun, 06 Oct 2019 10:26:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:c7:: with SMTP id w7ls1455069jao.14.gmail; Sun, 06
 Oct 2019 10:26:00 -0700 (PDT)
X-Received: by 2002:a02:cd8d:: with SMTP id l13mr23893458jap.138.1570382760072;
        Sun, 06 Oct 2019 10:26:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570382760; cv=none;
        d=google.com; s=arc-20160816;
        b=EnBWBpQawl0Zi2tVm4ju4Dl1PFzzhYT7sRpxVlVGD4N74FeWI/c+9vQO+wjliGMN8f
         KW8ZGrj/GHIUlzERLXQdGPODlF/TreuOjUcxKMK1kNzNRLssMKF4aFcIVZOg/4YzCmim
         kIXk/uND/e8B2CyaHRNvRsWYJ4SQ22ZTA0NKj8XLsWeaa3G0o/yCIwg3NXcbwe0Y259v
         X6PwmuQNI6S8mB5plUNLgE/1hhjw/UNLc6wluYENgP7Sz1RSUL/Gd8GKLqzE+DQN+U43
         irKkLc+EM375JASyf5qXKFWURH3Nne7xUpZpuqIsNm9whErpJ8nnPsJr2GszoHXyq7kJ
         fRlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=CgwL4hJCI5ee987j46Dkknf3HZ9Q98BVIvHBHDBJd00=;
        b=kGvVLpY82LRg29UYM8KzeRK0bLAF3VTOLH3RwSkoG7ORuQbk5rg/FzJ2sKgqRRA4Ha
         V0ZetJImp3Ggz+FcePvMz+KtmANUh5KHlEGj5AMRxAeW5V+R+FNv6ayn0wYjJzwgqdur
         KmKO1z4r7XK2YFK/Vf6UlGktY9bJK8D4ffwiNNmLhpO/iDfaLc4jfkhVbVAiL6hb8FHi
         5OoqYsSEPRQ+Qc6SXGiRdkqlT5k5ZeLYe5geB0MRYlz7py3Sx/z//9HTGgETxeWWoNOQ
         HNQho5ly+UQ7Dn7UkphJMu/v1Lyn4xwlEou3lJj0Hcz4C7S1zO6uruMkdYdvw6KeSoT+
         KLEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=UpE+fOHo;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b12si505086ile.2.2019.10.06.10.26.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Oct 2019 10:26:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id EAB4C2077B;
	Sun,  6 Oct 2019 17:25:58 +0000 (UTC)
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	stable@vger.kernel.org,
	Nathan Chancellor <natechancellor@gmail.com>,
	Paul Burton <paul.burton@mips.com>,
	Ralf Baechle <ralf@linux-mips.org>,
	James Hogan <jhogan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-mips@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH 4.14 29/68] MIPS: tlbex: Explicitly cast _PAGE_NO_EXEC to a boolean
Date: Sun,  6 Oct 2019 19:21:05 +0200
Message-Id: <20191006171121.475693129@linuxfoundation.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191006171108.150129403@linuxfoundation.org>
References: <20191006171108.150129403@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=UpE+fOHo;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

From: Nathan Chancellor <natechancellor@gmail.com>

[ Upstream commit c59ae0a1055127dd3828a88e111a0db59b254104 ]

clang warns:

arch/mips/mm/tlbex.c:634:19: error: use of logical '&&' with constant
operand [-Werror,-Wconstant-logical-operand]
        if (cpu_has_rixi && _PAGE_NO_EXEC) {
                         ^  ~~~~~~~~~~~~~
arch/mips/mm/tlbex.c:634:19: note: use '&' for a bitwise operation
        if (cpu_has_rixi && _PAGE_NO_EXEC) {
                         ^~
                         &
arch/mips/mm/tlbex.c:634:19: note: remove constant to silence this
warning
        if (cpu_has_rixi && _PAGE_NO_EXEC) {
                        ~^~~~~~~~~~~~~~~~
1 error generated.

Explicitly cast this value to a boolean so that clang understands we
intend for this to be a non-zero value.

Fixes: 00bf1c691d08 ("MIPS: tlbex: Avoid placing software PTE bits in Entry* PFN fields")
Link: https://github.com/ClangBuiltLinux/linux/issues/609
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Paul Burton <paul.burton@mips.com>
Cc: Ralf Baechle <ralf@linux-mips.org>
Cc: James Hogan <jhogan@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>
Cc: linux-mips@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Cc: clang-built-linux@googlegroups.com
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/mips/mm/tlbex.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/mips/mm/tlbex.c b/arch/mips/mm/tlbex.c
index c2a6869418f77..dc495578d44d3 100644
--- a/arch/mips/mm/tlbex.c
+++ b/arch/mips/mm/tlbex.c
@@ -634,7 +634,7 @@ static __maybe_unused void build_convert_pte_to_entrylo(u32 **p,
 		return;
 	}
 
-	if (cpu_has_rixi && _PAGE_NO_EXEC) {
+	if (cpu_has_rixi && !!_PAGE_NO_EXEC) {
 		if (fill_includes_sw_bits) {
 			UASM_i_ROTR(p, reg, reg, ilog2(_PAGE_GLOBAL));
 		} else {
-- 
2.20.1



-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191006171121.475693129%40linuxfoundation.org.
