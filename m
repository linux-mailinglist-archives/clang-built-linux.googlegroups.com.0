Return-Path: <clang-built-linux+bncBDD5ZFHSSQARBA6G2L4AKGQEIBBCUNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id DB8862253BA
	for <lists+clang-built-linux@lfdr.de>; Sun, 19 Jul 2020 21:46:11 +0200 (CEST)
Received: by mail-lf1-x13f.google.com with SMTP id c9sf6905982lfr.6
        for <lists+clang-built-linux@lfdr.de>; Sun, 19 Jul 2020 12:46:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595187971; cv=pass;
        d=google.com; s=arc-20160816;
        b=sWyeomRtg8KSZRLpxZtMgOGFpTlDjQ0X696QE8/bNBzT3QseNW4nmKMNALwYmKwo+0
         RNOAMJcAJ6Pnz+QLkC8w62jzvk80HORKF36z4GZIyp3IXAXDNJ4RwiJOWXsqwCnWVYYO
         5QPDBL3QDaeMQm8BbE7yk7Ie5nUC6v1tuu94Gr9Sj4dJKI81icnMEHDeDTDqD4yQfIKu
         YdvWJG1yWJiS0IS4xSr1DKP5/xQH/2qdQsOitf9HV01EuP3eOi3zzERcVRvr9jdUIrtr
         eX47tqArkDLUfw1vI4BbboRScfEHkbdwXwRrSdPNuW5Gq5Qtdc8M9lnjOtdIBwP45qmn
         e0jg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=zgPXAmkv9lBCtsmBwhhg+/HQQowoSgA999GnZvl4Bn4=;
        b=LTjzBVGVeUQ3TYfu88GagQOhix47wI1DnYucVbjVb7LoKHpZy9N8Oj5PKkvQ6AfBp+
         lG97MnMFkZaHxmn+DgCvqlayHjfp8PAtWIqkDqVDx5tAeujUeIweardX9C2PlTexMl1P
         guTQx+WGrilzPtgUj59tpfT/MOpb0S+A/LG1qxJd98xAyFTG1D3KNjTeLa5B0LnhATWh
         +BvWHXVttkDkeI+ZGj5baIrqwBBx+CflvyQOLjxf6dXl64uheBmkC3q4y3TW/oO3BCjI
         +2ETl0Zq9Y/qWCZMuoCR+fNQBBHgxT/iwXa6pCYPp2BUUkdDKrG9H0VcQJl+mi8JweGg
         OidQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of grandmaster@al2klimov.de designates 2a01:4f8:c0c:1465::1 as permitted sender) smtp.mailfrom=grandmaster@al2klimov.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zgPXAmkv9lBCtsmBwhhg+/HQQowoSgA999GnZvl4Bn4=;
        b=Swv+IBZU9hGNh7pED8V8yF+IF8+kMblRYjL5VvwHhTiZlZtIj1GQ49h90tO+CzHBQR
         gUd9ov68m8zxItuGKctrU2MJrA8dBQ778PkxzzU/8C5vMpGB+/X0etNlu7EWH4/bm/Yq
         1FHdXqdBA7jN/eACNJVaYOF3aLspNkdHKnSC4RWWnI2DSg/fPBOpGSfkF5gDDKPpfRWI
         t8HCeSHd9Lf9dsFj/eXVLddGBTshD9rPXv8DuXcbTkicQwEnhTWsdfuOeKz7rcA/x41i
         xKHg40edhjgJgIo9rcF5OsSlYxqvT1k+wo+ReNW/UZlipcmroJ/m5cQ4lthLMlX4g46X
         +DkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zgPXAmkv9lBCtsmBwhhg+/HQQowoSgA999GnZvl4Bn4=;
        b=HpKEqIB4pSuWqfT2i3bGmMe2GoPPTuhWgK9f8NIziuY9EtERLXly6Qm6sqmnC55qum
         Z4G/oJyM4lf5gyUPiUFYkMqdgy8uwgPF0k7zMCr7Jj+QSeIMfesAm0wdlUgb42nCmM4b
         yd5iIt2ZV8zWQu4FGaP82Wi/6OhyAIvdl+OhM27AZjkRDuonrG/ZgFiKlDF+MqUuvxhn
         CAl7gemlD7dM9qR0IJgY4LXZ83QLNm5KCJZnRm2WA3LXvecv/wf3gauiXMdk3zQg0KbY
         KiRMiBEqyrsV4NLNeaXCCRFHYGHczrCnOwAa91Jo1CKl0SESVydQygkX8t4qI0yoo55i
         aeRQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532SQRVtwSSfG06T7paxKaOcEJKycRELM3Z+csaFww/8ikqqsY1s
	mlQtxHqZTnf00p49XpuCqkA=
X-Google-Smtp-Source: ABdhPJzviRd+Z6ODdXT3iUmJR2hwkNMIdnDFiDXv4pPaQVzZWVzbJ16eUB3z01ci9RwWEfKecbHX5w==
X-Received: by 2002:a05:6512:70e:: with SMTP id b14mr2882532lfs.64.1595187971363;
        Sun, 19 Jul 2020 12:46:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8592:: with SMTP id b18ls2203452lji.0.gmail; Sun, 19 Jul
 2020 12:46:10 -0700 (PDT)
X-Received: by 2002:a05:651c:323:: with SMTP id b3mr8185879ljp.318.1595187970743;
        Sun, 19 Jul 2020 12:46:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595187970; cv=none;
        d=google.com; s=arc-20160816;
        b=yStv3Dhsz/0IruaCJ4bJSd4+NKFH7An02zcSDw4qgZw/JSK0L63wpMNWrSZlJoaTqj
         1tv5aH+6jXdkP+556taKXHU9ypYR6HFlThg/0ZF6xiStLWjgv5esCtWoOFgcS84taWOZ
         PCeTI+zlM5kS5hcDrp1rCyNdS7ATjtB6EydUO3awItB1rDb1gM+vphZxDtk+SvnTsdjU
         3/RnRe5nCxnDDbYrMzMSk6pUt7wxnrJJcXmjZBZDNghzX7Qv3S1eMG87vE1cUFlpIFK4
         Iw6DVOUbVRa9sQ+M3VCsMBn4HnxrjHFt0jCmW3QVPjNX5uYnlA+USgg9UMJu1L9GYhlB
         0S1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=QbkSqcZFbuvy164ZkgfA6jcoCfEXnktipVZ+4E7wirE=;
        b=vROJZlPRLcT/lIHPg2tqrdxyMDxwWwtyxTJJUjwKsMBsFY5rsBFdNqzaUI0bCtUDl6
         Pd4u/6q1H6BqywI0TXikdTrojTEHEXpNdkwSwOhDCan7rARg33wkiemRKQobPwXe2mLe
         F8OT+/F3T8w+GOveOQwUPjbzXHMgsRbvNrN65eLvVE8jJuAxtiEUSA8CHAmq9Bvqp13v
         3RHD1mL8RR/e6TUS/vHbrBZvEIO9Goi2Wb/2DTyp5f83zK4Mu8H2zOz/WETYEJUzCEoi
         93PMoUUcLW3pI4Js1dbn4l2eTXXO4rzNHahr+eyXrDH7YCjFbT/rIDDIKEo2vP2k0MHe
         WkFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of grandmaster@al2klimov.de designates 2a01:4f8:c0c:1465::1 as permitted sender) smtp.mailfrom=grandmaster@al2klimov.de
Received: from smtp.al2klimov.de (smtp.al2klimov.de. [2a01:4f8:c0c:1465::1])
        by gmr-mx.google.com with ESMTPS id e2si838336ljg.8.2020.07.19.12.46.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Jul 2020 12:46:10 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of grandmaster@al2klimov.de designates 2a01:4f8:c0c:1465::1 as permitted sender) client-ip=2a01:4f8:c0c:1465::1;
Received: from authenticated-user (PRIMARY_HOSTNAME [PUBLIC_IP])
	by smtp.al2klimov.de (Postfix) with ESMTPA id 594B4BC086;
	Sun, 19 Jul 2020 19:46:08 +0000 (UTC)
From: "Alexander A. Klimov" <grandmaster@al2klimov.de>
To: masahiroy@kernel.org,
	michal.lkml@markovi.net,
	corbet@lwn.net,
	linux-kbuild@vger.kernel.org,
	linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Cc: "Alexander A. Klimov" <grandmaster@al2klimov.de>
Subject: [PATCH for v5.9] kbuild: Replace HTTP links with HTTPS ones
Date: Sun, 19 Jul 2020 21:46:02 +0200
Message-Id: <20200719194602.61387-1-grandmaster@al2klimov.de>
MIME-Version: 1.0
X-Spamd-Bar: +++++
X-Spam-Level: *****
X-Original-Sender: grandmaster@al2klimov.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of grandmaster@al2klimov.de
 designates 2a01:4f8:c0c:1465::1 as permitted sender) smtp.mailfrom=grandmaster@al2klimov.de
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

Rationale:
Reduces attack surface on kernel devs opening the links for MITM
as HTTPS traffic is much harder to manipulate.

Deterministic algorithm:
For each file:
  If not .svg:
    For each line:
      If doesn't contain `\bxmlns\b`:
        For each link, `\bhttp://[^# \t\r\n]*(?:\w|/)`:
	  If neither `\bgnu\.org/license`, nor `\bmozilla\.org/MPL\b`:
            If both the HTTP and HTTPS versions
            return 200 OK and serve the same content:
              Replace HTTP with HTTPS.

Signed-off-by: Alexander A. Klimov <grandmaster@al2klimov.de>
---
 Continuing my work started at 93431e0607e5.
 See also: git log --oneline '--author=Alexander A. Klimov <grandmaster@al2klimov.de>' v5.7..master
 (Actually letting a shell for loop submit all this stuff for me.)

 If there are any URLs to be removed completely
 or at least not (just) HTTPSified:
 Just clearly say so and I'll *undo my change*.
 See also: https://lkml.org/lkml/2020/6/27/64

 If there are any valid, but yet not changed URLs:
 See: https://lkml.org/lkml/2020/6/26/837

 If you apply the patch, please let me know.

 Sorry again to all maintainers who complained about subject lines.
 Now I realized that you want an actually perfect prefixes,
 not just subsystem ones.
 I tried my best...
 And yes, *I could* (at least half-)automate it.
 Impossible is nothing! :)


 Documentation/kbuild/Kconfig.recursion-issue-02 |  2 +-
 Documentation/kbuild/kconfig-language.rst       | 14 +++++++-------
 Documentation/kbuild/llvm.rst                   |  2 +-
 scripts/package/mkdebian                        |  2 +-
 scripts/package/mkspec                          |  2 +-
 5 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/Documentation/kbuild/Kconfig.recursion-issue-02 b/Documentation/kbuild/Kconfig.recursion-issue-02
index b9fd56c4b57e..df245fd7670d 100644
--- a/Documentation/kbuild/Kconfig.recursion-issue-02
+++ b/Documentation/kbuild/Kconfig.recursion-issue-02
@@ -42,7 +42,7 @@
 # "select FW_LOADER" [0], in the end the simple alternative solution to this
 # problem consisted on matching semantics with newly introduced features.
 #
-# [0] http://lkml.kernel.org/r/1432241149-8762-1-git-send-email-mcgrof@do-not-panic.com
+# [0] https://lkml.kernel.org/r/1432241149-8762-1-git-send-email-mcgrof@do-not-panic.com
 
 mainmenu "Simple example to demo cumulative kconfig recursive dependency implication"
 
diff --git a/Documentation/kbuild/kconfig-language.rst b/Documentation/kbuild/kconfig-language.rst
index a1601ec3317b..41bee6a171e3 100644
--- a/Documentation/kbuild/kconfig-language.rst
+++ b/Documentation/kbuild/kconfig-language.rst
@@ -688,10 +688,10 @@ and real world requirements were not well understood. As it stands though
 only reverse engineering techniques have been used to deduce semantics from
 variability modeling languages such as Kconfig [3]_.
 
-.. [0] http://www.eng.uwaterloo.ca/~shshe/kconfig_semantics.pdf
-.. [1] http://gsd.uwaterloo.ca/sites/default/files/vm-2013-berger.pdf
-.. [2] http://gsd.uwaterloo.ca/sites/default/files/ase241-berger_0.pdf
-.. [3] http://gsd.uwaterloo.ca/sites/default/files/icse2011.pdf
+.. [0] https://www.eng.uwaterloo.ca/~shshe/kconfig_semantics.pdf
+.. [1] https://gsd.uwaterloo.ca/sites/default/files/vm-2013-berger.pdf
+.. [2] https://gsd.uwaterloo.ca/sites/default/files/ase241-berger_0.pdf
+.. [3] https://gsd.uwaterloo.ca/sites/default/files/icse2011.pdf
 
 Full SAT solver for Kconfig
 ~~~~~~~~~~~~~~~~~~~~~~~~~~~
@@ -710,10 +710,10 @@ such efforts somehow on Kconfig. There is enough interest from mentors of
 existing projects to not only help advise how to integrate this work upstream
 but also help maintain it long term. Interested developers should visit:
 
-http://kernelnewbies.org/KernelProjects/kconfig-sat
+https://kernelnewbies.org/KernelProjects/kconfig-sat
 
-.. [4] http://www.cs.cornell.edu/~sabhar/chapters/SATSolvers-KR-Handbook.pdf
-.. [5] http://gsd.uwaterloo.ca/sites/default/files/vm-2013-berger.pdf
+.. [4] https://www.cs.cornell.edu/~sabhar/chapters/SATSolvers-KR-Handbook.pdf
+.. [5] https://gsd.uwaterloo.ca/sites/default/files/vm-2013-berger.pdf
 .. [6] https://cados.cs.fau.de
 .. [7] https://vamos.cs.fau.de
 .. [8] https://undertaker.cs.fau.de
diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
index c776b6eee969..2aac50b97921 100644
--- a/Documentation/kbuild/llvm.rst
+++ b/Documentation/kbuild/llvm.rst
@@ -76,7 +76,7 @@ Getting Help
 Getting LLVM
 -------------
 
-- http://releases.llvm.org/download.html
+- https://releases.llvm.org/download.html
 - https://github.com/llvm/llvm-project
 - https://llvm.org/docs/GettingStarted.html
 - https://llvm.org/docs/CMake.html
diff --git a/scripts/package/mkdebian b/scripts/package/mkdebian
index df1adbfb8ead..48fbd3d0284a 100755
--- a/scripts/package/mkdebian
+++ b/scripts/package/mkdebian
@@ -175,7 +175,7 @@ Section: kernel
 Priority: optional
 Maintainer: $maintainer
 Build-Depends: bc, rsync, kmod, cpio, bison, flex | flex:native $extra_build_depends
-Homepage: http://www.kernel.org/
+Homepage: https://www.kernel.org/
 
 Package: $packagename
 Architecture: $debarch
diff --git a/scripts/package/mkspec b/scripts/package/mkspec
index 8640c278f1aa..7c477ca7dc98 100755
--- a/scripts/package/mkspec
+++ b/scripts/package/mkspec
@@ -46,7 +46,7 @@ sed -e '/^DEL/d' -e 's/^\t*//' <<EOF
 	License: GPL
 	Group: System Environment/Kernel
 	Vendor: The Linux Community
-	URL: http://www.kernel.org
+	URL: https://www.kernel.org
 $S	Source: kernel-$__KERNELRELEASE.tar.gz
 	Provides: $PROVIDES
 	%define __spec_install_post /usr/lib/rpm/brp-compress || :
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200719194602.61387-1-grandmaster%40al2klimov.de.
