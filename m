Return-Path: <clang-built-linux+bncBAABBLMT47ZQKGQESJJG3LY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 649C5190810
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 09:49:51 +0100 (CET)
Received: by mail-io1-xd3a.google.com with SMTP id p14sf5706175ios.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 01:49:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585039790; cv=pass;
        d=google.com; s=arc-20160816;
        b=fU5I4ZMcEPWeoka7v6KuqPSWGKnEPaCY7FzKP1q0zaS6Zdn8bFa8nfpff7HTIfCCZw
         37+6b62mzDVv6ysKKcdoeuPGBWYiiHeLuo1WPkZ1Yn//j2FWIQuTKWdBx9erd7bpKwjP
         f3NoWMr5FzWlgzQJTXNiKjKtYW55m10QN7v30ksSqeCOBEZj3S9z+GQYjmrEIiVrRYoG
         V+Rzm+BNvR+QkNE1PqXYHQ4prBkOURtvqHG0wgpQmGfuVQKUIJHxMlxdMRrf74ET6f/B
         PprTvtHZFVpW1myDjU8YIU9konU+DpgFQUVe0A63hloJODD88Z1SaJYwArFStK80ZtaP
         +p4w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:dkim-filter:mime-version:sender
         :dkim-signature;
        bh=eLcPQfOjJnF8OF+RCH5pCISpwdmolbmBqz9OnAYjXCg=;
        b=cddF6d0EI0WaYp5ogp3UjhipnJpriyYcL+CYGzCGD8B7eAySb5eVxUe0tMKe1P9DEV
         qSO2gW8NanMFJ3rbie9T/851LMbHWqTwxQx3AVMbPu2f+Gd1HjIdLFqCDdyj4Qg+Ks2Y
         uD2v86rJIOihK0FEZzoZ7Tvz04GmuG8V/4zdImGlT/WrZG92hdsNk19MaxXC6EGcEndj
         CISGAGqKj0Lz8bxvhXQsReWlaUVkAXOXYPlZtxtsyj8EQh49fTX0rZGv1b7qqsYf613m
         pAV/3vykyYmWGbH1Ub8hXJT1Cg2T24gw/KL/cbzAjCALgZyIGz5a/72mmdWe3aGKxMv0
         6A6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=db6hzkHI;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eLcPQfOjJnF8OF+RCH5pCISpwdmolbmBqz9OnAYjXCg=;
        b=r6lCUeSTHQIVh+zczdf4WXMHtUjiSa6rOTUo6J//E5QCeAOEtR1XIKofbCq3jDIny+
         utUElFUtpsN0T0gRT9VwReaA3hK8RS7F9xRB7gTpI5zEr7qnKjqvsYwyCBoHrvMAPuvw
         K+g5TZ6Ex7q22CH2q6Vra1ghFfDdds3w0pQiwx0qv+gm5gWmIqh5Yunz6OCTp7MD8SUt
         m2q2SW8fmWGVo25bn9QAGwsy6080oNDqVN4GQEhXXZ9U7L7qXGSO+qHxbqgEi7OiPS38
         7r7SDt4TbA7xK0SZmffT2JdNzB5sb6Kjc5xyoPZ+wxawv2Eq0A1oYlFvwpkfmeshgPq6
         oMEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eLcPQfOjJnF8OF+RCH5pCISpwdmolbmBqz9OnAYjXCg=;
        b=BMFu0rwWKc6GwLsfrQwlYAfwHvBKUHlFBD99pShonJk6baaEm1cwbimluOWBrSF45X
         mg6qOV5Opd/NVJ/dNOrYTmNt4GMSm0BGtCY3ZIbsk88Ngvr+iMJIeqxvDpLPqr3tvYnZ
         iu0GgTTZ4EXv3ckrVizhTtEOD1BlEfk/1ZUIRFOVx9y0VwL/zTBzqgpiZ0lSKkMUk+3I
         zHeg0Ovl/g5aZo+94cuvwFOpzaf9IyUzR760Vk98Qepk8UTB4Egn51CoYHAexPIEklAQ
         YDDN2uBDfiHcej/Hjf0K5yuujL8aU4n2vN50hMszc96Dfk7+pTAcdz26wZgZaMIpjIc7
         ayNA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ12oD24uEFZ/JEg1wmV5pL0vNQ7MYoUR14T5D9LdCCSMilXuCYD
	ix6XpT0+QO9nVwebFWE+H5c=
X-Google-Smtp-Source: ADFU+vtCsBxP5B6su2siKiqVrLxAnNEyI2BpBzbvqy1+elUXiwjIjKDAc65Eg/jPUCrzNOdyuipRuA==
X-Received: by 2002:a02:4e07:: with SMTP id r7mr2964492jaa.96.1585039790017;
        Tue, 24 Mar 2020 01:49:50 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:8106:: with SMTP id e6ls4158496ild.6.gmail; Tue, 24 Mar
 2020 01:49:49 -0700 (PDT)
X-Received: by 2002:a92:9606:: with SMTP id g6mr24824312ilh.119.1585039789669;
        Tue, 24 Mar 2020 01:49:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585039789; cv=none;
        d=google.com; s=arc-20160816;
        b=wifzFPy6Z07uD5Wc6LWMsprnsyDCRKKyi+rW5MnwJCUkF5Kk/iRrrjbZJ9FID55FVL
         GOEUgWrv3Ru3/rN2Ra/L1sCoExuubHRdB8jFLq0Iz12+UuIwpMZmPstRCqMawWpzt5f+
         /nzvVko0xhTrI5LkVLkDYVcDLD7ZDSEIUVS6HU5crY0V4xeiLb+n8Ll6s6qedg3vWwZr
         al+wvSB8SqrenZYqymd+y2xGEidH7HbPyr4ZC99bWG15iYeqFhskNtkc27YUCUJcVmxD
         9z/GASc5CSLuS3j2IQO+r40C0MygCUupk6OYq8vkeZbqx3e/Y4kSeralV8rsNrU9e4gN
         TXHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:dkim-filter;
        bh=s0I5SOuN4Cdii5q1Bnu+2uo8oY7Phl6nmh/yFk4bv3o=;
        b=bCVarMriM4TvFXssF2NWSNT0TU/MPstLiSYeEH0xKbLUfJrp9AMs8FCMdSNCy+C3AD
         v5RbxqV+HG/s8p/z0Zwn63L2EWCPAClrBOkJTpTTRLAEYF88VSBgiT+G02JVVmE0NsE8
         uUETDSXU2VdxBXwtCIgTA3G+jFjNlr5iWDmpJEOcH6lgbQF7uf/smwZ4UeH83HEe5I8/
         xcUCF2tsE+yKQCvPiBS+Lmi/kP4+HRHvsrmLbt+VF/1sOIIwoBYeffTI/NyO8x6rrGel
         lMKyuFwGPm4clXJ1tMYOTJ14BGNRlEtwWa5rtzn/e0tiGAEU2hQ7ZLfsPX+LxIyNGOPL
         3dwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=db6hzkHI;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id a3si1342960iog.2.2020.03.24.01.49.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Mar 2020 01:49:49 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from pug.e01.socionext.com (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp [153.142.97.92]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id 02O8mgsl011219;
	Tue, 24 Mar 2020 17:49:01 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 02O8mgsl011219
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kernel@vger.kernel.org
Cc: "David S . Miller" <davem@davemloft.net>,
        Linus Torvalds <torvalds@linux-foundation.org>,
        Kees Cook <keescook@chromium.org>, clang-built-linux@googlegroups.com,
        Herbert Xu <herbert@gondor.apana.org.au>, linux-crypto@vger.kernel.org,
        Ingo Molnar <mingo@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
        Borislav Petkov <bp@alien8.de>, Peter Zijlstra <peterz@infradead.org>,
        "H . Peter Anvin" <hpa@zytor.com>, x86@kernel.org,
        linux-kbuild@vger.kernel.org, Borislav Petkov <bp@suse.de>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Jonathan Corbet <corbet@lwn.net>, linux-doc@vger.kernel.org
Subject: [PATCH 14/16] Documentation/changes: Raise minimum supported binutils version to 2.23
Date: Tue, 24 Mar 2020 17:48:19 +0900
Message-Id: <20200324084821.29944-15-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200324084821.29944-1-masahiroy@kernel.org>
References: <20200324084821.29944-1-masahiroy@kernel.org>
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=db6hzkHI;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

From: Borislav Petkov <bp@suse.de>

The currently minimum-supported binutils version 2.21 has the problem of
promoting symbols which are defined outside of a section into absolute.
According to Arvind:

  binutils-2.21 and -2.22. An x86-64 defconfig will fail with
          Invalid absolute R_X86_64_32S relocation: _etext
  and after fixing that one, with
          Invalid absolute R_X86_64_32S relocation: __end_of_kernel_reserve

Those two versions of binutils have a bug when it comes to handling
symbols defined outside of a section and binutils 2.23 has the proper
fix, see: https://sourceware.org/legacy-ml/binutils/2012-06/msg00155.html

Therefore, up to the fixed version directly, skipping the broken ones.

Currently shipping distros already have the fixed binutils version so
there should be no breakage resulting from this.

For more details about the whole thing, see the thread in Link.

Signed-off-by: Borislav Petkov <bp@suse.de>
Link: https://lkml.kernel.org/r/20200110202349.1881840-1-nivedita@alum.mit.edu
Acked-by: Kees Cook <keescook@chromium.org>
Acked-by: Jason A. Donenfeld <Jason@zx2c4.com>
Acked-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 Documentation/process/changes.rst | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/process/changes.rst b/Documentation/process/changes.rst
index e47863575917..91c5ff8e161e 100644
--- a/Documentation/process/changes.rst
+++ b/Documentation/process/changes.rst
@@ -31,7 +31,7 @@ you probably needn't concern yourself with pcmciautils.
 ====================== ===============  ========================================
 GNU C                  4.6              gcc --version
 GNU make               3.81             make --version
-binutils               2.21             ld -v
+binutils               2.23             ld -v
 flex                   2.5.35           flex --version
 bison                  2.0              bison --version
 util-linux             2.10o            fdformat --version
@@ -76,7 +76,7 @@ You will need GNU make 3.81 or later to build the kernel.
 Binutils
 --------
 
-Binutils 2.21 or newer is needed to build the kernel.
+Binutils 2.23 or newer is needed to build the kernel.
 
 pkg-config
 ----------
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200324084821.29944-15-masahiroy%40kernel.org.
