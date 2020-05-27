Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBRG3XH3AKGQEBAWVDGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CB7C1E43FB
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 15:40:21 +0200 (CEST)
Received: by mail-lj1-x23f.google.com with SMTP id c18sf42528ljd.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 06:40:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590586820; cv=pass;
        d=google.com; s=arc-20160816;
        b=cVlJBFvNsojb0Vs/7HSDoGc2cXdDn24BpmtkWcFVsxIgmJtOMogX0puEnM7dPd04WK
         x1WnoXb8TTz6n16PdfYNkALs/la4pxZRWORBVlY+QoU/Mjipi2ullxwD+uVKoy3Fzh0V
         ceEHI4gbb+4bWrnii1TYi65/bwPFCTFlpZwwroUeuqjzKKAFTYKj03VhuAdyaxebsIjf
         o7ullrMLMuXHmzTK1FhPg/k3MO4HSr+/An2NbvD27o5I0AEdfg3ij0z62uBhmw3so+E3
         n+FJ11oPGAPuCCogc2HIj3JmVwFo8VK5yh+e/JBRm0pd5eSU9m06x+Eh7S/jpOT05CI9
         dgig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=0yeuYEiKtJkYpiGg/cPSKX/p93E2ko41qnMT0IS90qU=;
        b=US57chvkkwf01jSPav+A/VSsE0BvQ+kbkCdxexNs9oNrjW5S2Q83Ymcuh223Z+ReXz
         CCv4dgFbfcc0dSLoKmm/ZA0Si8ikc3xFZForZDMHyBQKKfel5UzaBlSfRAOzEBVHfNlz
         XgWFu/Yjgr6r+7wYsLFMPxXdwob0ZW1+64NLXGdfQwwZoRbK5KGcMNr1+A8ADaDRXMd6
         swmS37MuKEsHhIOC+dp2yDI0s4qBc9LU3w/RQbdUAqMrUPJ8jRYrMVQHcoSDUewsBw2n
         MiRcK136JIfaJtHAZ0OGymc0hnQTJgKuMthJenzdARG3JPLTYg6BMD58stsgbtGtm2MA
         FEQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.135 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0yeuYEiKtJkYpiGg/cPSKX/p93E2ko41qnMT0IS90qU=;
        b=K9BTVntyofQy72DU2h7mttqygAGRbevDudpcVOnje8rxwitK0dNJLE9INVPmbm16/0
         zz2wrwT4NUh52eU9lXUnAUxHLxEHFzyY6jWe8gfjcS/SljWXY737ivMzix6CBXfRqHjK
         BQOPqThQFUwMgY6bxtob0KCtkuoKIlmDukpSz3IFmipTOysZjUa7oj7D0+d6cnBX0p0T
         xEo4XI/p80MAtrOwYlauUng9fFeDKzesFhCQYl6xab2mKY6YugUjXAtYThLcmJApGO8o
         MCiqlVhrYXpqmBsLfeLtCSvZO5izmxe9yA5oky4RlIQifSHUOLE+OAOAMHrGVKX6nRaT
         dNhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0yeuYEiKtJkYpiGg/cPSKX/p93E2ko41qnMT0IS90qU=;
        b=b9fvLnBZKytnUupAflACv+IL+NZofIDk8LNsnBMu7skkVYGSUKFQ2jLvlc/z7J+wD2
         x088ROW4pq/CRmNVdNUx4tXWsLh3L5s/iejJip07nAOLKTNI/19XbJww6+PfgKcoY8v7
         aKsHanSt+Y/MATQ2YVz+AIMR7y07rKn/fvkdDr38WiSIEVp0J1xpZmqYQ2nXG7H432iS
         C0KNeiOGhf1JrF2Sbvz3AEeeW7aIv/C3OI6tLQm1EEgvXqyIMg1ai7T02UyN5rXz0QZo
         Hnl1Z310j0VuvQvTJkeUvG4u0qs1pZ8cBKBgmpoDTgYMkZcBqonIT2FUIMmcdbNcSUlk
         9s3Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530hsp6KMC1s/oI5hnBVbOBIg9oeRZzi0wJUm8IgkF2AnQUHYujK
	qRJidWc8rNjJDtG73aOzjic=
X-Google-Smtp-Source: ABdhPJxOpb/1J7DjlSUn02ydxHwaN+TGkqcForVcDfbtb4efHhmq32fV/AnYyOlZuZpDc86WsGppEw==
X-Received: by 2002:a2e:a548:: with SMTP id e8mr3204989ljn.76.1590586820557;
        Wed, 27 May 2020 06:40:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8850:: with SMTP id z16ls2902774ljj.3.gmail; Wed, 27 May
 2020 06:40:20 -0700 (PDT)
X-Received: by 2002:a2e:a30e:: with SMTP id l14mr2802375lje.317.1590586819962;
        Wed, 27 May 2020 06:40:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590586819; cv=none;
        d=google.com; s=arc-20160816;
        b=xDskr0bPhgKFy0DYa5MIxcn/chia7dv4NWOUW3LfpXnzBaDuzVZ90VVJxlGh+LRoGt
         E58YAFBiAW3igYSGKWrVIqEsAhpImaMELYDMHyc2k6TwvRSXfpkZool44n1fohxQlkWv
         iZixOabuGHTz66gbXgIpx7/ToHN5dGQe/8oC01urFjS6FuxQPVfzrKIr0gwO4E3AxfsF
         h6myS5ywNBLXfXUMjJ3wlQctJ2HZIvhLvonh9yyRSINLaf3fSlAL//XJBPVnvPGfUgK3
         T6539I4j9ny9JWIOuGMOZW0q6yWFoDXQJ7YtktY/ikZTUU8yFNyNVFhp7UsJwvWeKhCg
         zAog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=hrtOMZLV7wq1eM/tmz5NFUBibP9KNPXrZqBCQUSGufo=;
        b=BFedrNihw/pfkT8aQOQzWB2iobi1Ui1fRb+17qqgh4SvKN/yhDRx2t/F5niD28reiR
         xPtcqHyuLqUVfhUAoXd3LzZ59v5vngIWqFa6bA29ArFh+hM+igLZ01siIh8ZrwbdOPt7
         17KHODJsPhduAuAZtNWwm4UU7tMCvIK20tjOXrYVzlnk/2unKPtu8lmzdaW3QRI0s0Hc
         HWk2ELNDDLI8Ow1/BrN3vWEYeVp2qF1Hsw1pMw5j0J7ENkq5jiN3fQ25gEt29Qc8XGxV
         fNl816QMAclrPpcQXRCAWHV32rzE37Wuqti4zXtn62dTT21gROxE2zqoSA8pC6vIZ3gt
         s/Ew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.135 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.135])
        by gmr-mx.google.com with ESMTPS id r13si108851ljm.8.2020.05.27.06.40.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 May 2020 06:40:19 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.135 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.135;
Received: from localhost.localdomain ([149.172.98.151]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MRTEr-1jPrFs1MOr-00NQt9; Wed, 27 May 2020 15:40:17 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Kees Cook <keescook@chromium.org>
Cc: Arnd Bergmann <arnd@arndb.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] arm64: disable -fsanitize=shadow-call-stack for big-endian
Date: Wed, 27 May 2020 15:39:46 +0200
Message-Id: <20200527134016.753354-1-arnd@arndb.de>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Provags-ID: V03:K1:WMyBDjaVpnuIlG/nKy3Lfv0f53mC2eMeZk2hD1L4n7nGNgyw6xg
 b3nnLX7RQgVMDLaEP8jeYPeAoZu/zF0+z/vVS6FlpSZ1SIFpVVgeTGlO1P3Ep0Lb6nJG0Zt
 X7hH8s/zBBJhCqlR2UHeoEwOqmPu4huhF9KMCDNPoiOurHivHXkoO0/SR60IwHGXsXj/yAF
 b2s7GbapOF9ubsY1p+h1w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:F2IKGpPrHuM=:tVtK56yFtrrepWDvUzbOpT
 3us5e9MR1LU4mGSnKMn9Oify9OSZr+z1ryQsomr5xmHuXPTcDxkeL9FtQ6IIzaZK7M4TiGSfm
 SrfknaWXsLAXdIE0avmvLV0juYDzTAcvZtb9k/8fuDk5WLk1Xzj03wmeX+2+GlE+zBu5Uxtly
 3R9vMAQ+KN6313tG9I0lsEvMPCLQoVMlkpm95g50p9vQzl9dxAcXxemJgg5SGc+kTmITf88fw
 TzBvY2rXiGKyibM7Dok5SP7iaxP+NvipLQt1Ykwnqib722x77OfOGSRsjyyAi05G3a0HhkfLW
 /qlIZ3cfZ8HwyXCftttGaI+tPf4INmvSHFJhcz3sp8T8zFr1DfksvLUXYM0yW2t/kSyUXAY6r
 jqg7lgnshy4rjtPaSbqwns/ofBBDNm2riCNB1dm6j/QFwHquE7UuMkpmdNxd3Rhw355uhMZyG
 9WQzvmbaPYDkXMulDC/pFVUnnmk6JIMlNo7Lb4axzkRdQQrTE+TY5VKeSJqchQZ9k16DIJpfA
 DdpLlaK3d2hiHZaGGzVGDVaOXEUcC76oIrpg0ytLJaoNLJeVdcqjcrWlm0URQKYw5ffGf8cAc
 554DdULyt0uYgJix3t8iQctDwx76HodgMDd3y8TrLOfz6t5g9HUTBgCA/CHd72mCM9OMNU/Sn
 vh5Z1871+ipaobAjqACcsmCDRluu13MqfojKB79O1jaGP+0U5ndDp6R6JRAaiJnKMbYdxmimb
 BmZNfm1gtJUlSBep2bkWn5rM/hFM9OhO5b2MYMJxNJwdy0tcIsr+uEsM+4EX8ZBMrkNJ/14MP
 TsHpy/trLFTR2EQPAPCTZ2pxYPaGA3bxNgm8GAncGv7aa37U1Y=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.126.135 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Content-Type: text/plain; charset="UTF-8"
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

clang-11 and earlier do not support -fsanitize=shadow-call-stack
in combination with -mbig-endian, but the Kconfig check does not
pass the endianess flag, so building a big-endian kernel with
this fails at build time:

clang: error: unsupported option '-fsanitize=shadow-call-stack' for target 'aarch64_be-unknown-linux'

Change the Kconfig check to let Kconfig figure this out earlier
and prevent the broken configuration. I assume this is a bug
in clang that needs to be fixed, but we also have to work
around existing releases.

Fixes: 5287569a790d ("arm64: Implement Shadow Call Stack")
Link: https://bugs.llvm.org/show_bug.cgi?id=46076
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm64/Kconfig | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index a82441d6dc36..692e1575a6c8 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1031,7 +1031,9 @@ config ARCH_ENABLE_SPLIT_PMD_PTLOCK
 
 # Supported by clang >= 7.0
 config CC_HAVE_SHADOW_CALL_STACK
-	def_bool $(cc-option, -fsanitize=shadow-call-stack -ffixed-x18)
+	bool
+	default $(cc-option, -fsanitize=shadow-call-stack -ffixed-x18 -mbig-endian) if CPU_BIG_ENDIAN
+	default $(cc-option, -fsanitize=shadow-call-stack -ffixed-x18 -mlittle-endian) if !CPU_BIG_ENDIAN
 
 config SECCOMP
 	bool "Enable seccomp to safely compute untrusted bytecode"
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200527134016.753354-1-arnd%40arndb.de.
