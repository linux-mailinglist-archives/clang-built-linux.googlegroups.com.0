Return-Path: <clang-built-linux+bncBAABBIMT47ZQKGQEELELYHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id B2EFF190806
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 09:49:38 +0100 (CET)
Received: by mail-ot1-x33d.google.com with SMTP id k1sf11924476otn.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 01:49:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585039777; cv=pass;
        d=google.com; s=arc-20160816;
        b=EYlI88p3FykymOocoD9IqmK7LvuAOHpgY2vY2m73Zsajvy6RB3JsoOmTPFXCggNESr
         EXIFoK4nqDWoXTE+kCOcuJFSY0ko4sOgyYLKPQ5/dQeIOl28Q3e9jisddh4QNaWyrcpV
         RF5o+4Nti0h5xzlkkBIsKm3GEypSt8VLbmD27c6wKsRBdhoNeO27LkWNVKUhwV2cQxeu
         KjKhFMOZXiPJmdRT/zSDM9w/4zYjIrKamK9xyZ+59SnLLWAx3t/EFpB3O/H3ZlS7aS1c
         KnCEsBPzUsPFDc6OCRj2ye0cdpxb1ya03KvpZsKaZBE2FeV5z1d5tVS35mAmVYRuZQeh
         BGYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:dkim-filter:mime-version:sender
         :dkim-signature;
        bh=jB4uLnTR+8q3T1WvcNyRB8nDkaBE8FTIk8lQi7tjLXE=;
        b=ESBHfZhrWbSgxaKqVSlvWZvIGXAUYQBf5DTI+bHqIkyMzCXBqzFpXA6r2qdkrKSybl
         1evInJxtRFhUO7+RLgQ1HG90FGNRWFqpJjJjcJ8CvtSwBmQ5djoG6/eT8XCltMcdYixy
         x4pgEFyb8N8RSyzUXQGlhvdkwllgNVOaO2YS76uBKDY1Co74Gm/bRv17B81LnnjC/b/Q
         vsgjCUwiEr6TAkc3y0mrOKkyE1bHo8E7ywAE65a/v63W/0zGdFN2fzpoCReLVg02hc8Z
         WQEcNqGDgzHlgcEVbOsK/0cblxl8rgnPIrM+Iwo1EJigMcIzhxQ9iOVKPWLYnGkrXRWF
         RG1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=L4sWk0ZS;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jB4uLnTR+8q3T1WvcNyRB8nDkaBE8FTIk8lQi7tjLXE=;
        b=TQAbIz5bTJ+oP5Pmdw76rXB6KfDygxUDocWVqYoOxfAMeyOy0ubG4Eve7s9FXfMyXi
         pbRVIYIzqx5ziX+ZBZYrG9TnJQSWsT+eghhbfAmzAFbJ8wXDsIXqIUGq79m+KC+ZOae3
         eTMQRW03uKy7WOgeOBIKXBZ6PCe6n0Ge9e1sZWvb1vRZiOp8/PoLCoUPZTForbWnrAM2
         SINgH5miX7V0FUymXLRTma6T0QhOuTcvap2s4UY7FoT+G5vAEqf50Br3DP2Ybus+iOTO
         MVcOuLgtEeEDI2FkH+Sb6awQldv2AEKb1CP4u+Op+IsNlmg7RWhxWAPghBGdvbHfRJro
         WdgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jB4uLnTR+8q3T1WvcNyRB8nDkaBE8FTIk8lQi7tjLXE=;
        b=lSCQfaUDuTMb8m+gJyB4NR3gd69YsG9LH1zV+5TUbon3uOUaH7KtSDWpve0pLXFmi0
         ttWrlawt5p7mIcWIGFIFtmIDUCeYLYn7YvmtWtz93zrHh5jJ0TK0K+XCwZpXTwPSHCXj
         kZdHR+4w63QgIYLY3HA2r69Xxhv5Acwu77reABYtJLtdc0q2JIeH7gUX/FOJcfpwJ8S+
         cqrnqPUjTCdkuG7m2v46hvpQKQa9MOvsw8V2/weoFhqkzMCRrF2xS0iHB8RCfsnxuDWJ
         TVgo+3s1uVfn5RKND6RuzQg35Ueih9K+RnLCAatXmNyExHWT2NlQEIeqoUFjRu7Sojo+
         MPSg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3xsEqo17u4VcaG7XIQwePXWvtVPwLERt3yt4ynwcfyu0MLkByS
	2k5qQDGzoXnXjKmZcyxBaBs=
X-Google-Smtp-Source: ADFU+vuICxCTK/o3RSuNQdwLHOFJaCad5V0Fhon7V0fChraaidD+MXKs+tQx51XSKfh+2HkaPWp43w==
X-Received: by 2002:a9d:2215:: with SMTP id o21mr20381982ota.113.1585039777394;
        Tue, 24 Mar 2020 01:49:37 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:3bc8:: with SMTP id k66ls872134otc.10.gmail; Tue, 24 Mar
 2020 01:49:37 -0700 (PDT)
X-Received: by 2002:a9d:7696:: with SMTP id j22mr22188346otl.188.1585039777053;
        Tue, 24 Mar 2020 01:49:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585039777; cv=none;
        d=google.com; s=arc-20160816;
        b=oyrCn+inq4L++gA3kpEQ48z+pm5kRyNu2V74aOiLZIGXDiCyYhPh++vAVH05tfr1RS
         RXwQS8EFqSbuj8QQSz+DFL/AOSYKzdyCs+5KYgNGN1rxzhp6ziC9VBpyJ3rnWvbUwLRW
         NTOmRasUHYr91DkQikvho0ob7XkyOBTdPTgP0ILjE6ahtOD3E7jFcD98pZ8TgvpwiJfC
         6ii7c5NP57rMeS2Zhvu6OWAZ2rE8drdJjzeOzwlAT4Vnovi1GeCTgn43kFcE4YWr5jEV
         BSPCbzVviau1DXxQ0NSLPJtQTF5Lxo0DtmVFqIqIseI9luRIr6IlNctha+ZJvJklSM/A
         lSBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:dkim-filter;
        bh=Zh5UxR06uJCD24GzekHGCCPt3LyuPsfIaph9vVkw9LY=;
        b=dqMGykDL4L2Mfz1ZhaxTe6n3noGgrbAX94pXZC0YgvjebwurY8N51/iRZWWBpXA8Zv
         x9PGD4Xy26PGR4FfaCprBENaMM279YO+HZxhw/qPEwUgj5LinspGSfYI0JJ0g9/Zi8uo
         cII6z+odEZjxsL8o/JbpgWQi8hG6txhyVzh6/iXEDKdlNNciS873S5lLoOc+uDORZb1M
         0PjoM7TXcfsH4ndtoa65PqpND5cGAxAndUPwdHRUtAGAlA/TSZ4mXiy2HkvdvrixgXXX
         JK7vSu2rq/iAXVtxYzjD1yFAHEqs4d2pmTdP72pDJhETG1eAQcF/I67XknzEqSgP0sgs
         X+tA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=L4sWk0ZS;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id m132si1156120oig.3.2020.03.24.01.49.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Mar 2020 01:49:37 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from pug.e01.socionext.com (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp [153.142.97.92]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id 02O8mgsY011219;
	Tue, 24 Mar 2020 17:48:44 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 02O8mgsY011219
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
        linux-kbuild@vger.kernel.org, Masahiro Yamada <masahiroy@kernel.org>,
        Jim Kukunas <james.t.kukunas@linux.intel.com>,
        NeilBrown <neilb@suse.de>, Yuanhan Liu <yuanhan.liu@linux.intel.com>
Subject: [PATCH 01/16] lib/raid6/test: fix build on distros whose /bin/sh is not bash
Date: Tue, 24 Mar 2020 17:48:06 +0900
Message-Id: <20200324084821.29944-2-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200324084821.29944-1-masahiroy@kernel.org>
References: <20200324084821.29944-1-masahiroy@kernel.org>
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=L4sWk0ZS;       spf=softfail
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

You can test raid6 library code from user-space, like this:

  $ cd lib/raid6/test
  $ make

The command in $(shell ...) function is evaluated by /bin/sh by default.
(or, you can change the default shell by setting 'SHELL' in Makefile)

Currently '>&/dev/null' is used to sink both stdout and stderr. Because
this code is bash-ism, it only works when /bin/sh is a symbolic link to
bash (this is the case on RHEL etc.)

This does not work on Ubuntu where /bin/sh is a symbolic link to dash.

I see lots of

  /bin/sh: 1: Syntax error: Bad fd number

and

  warning "your version of binutils lacks ... support"

Replace it with portable '>/dev/null 2>&1'.

Fixes: 4f8c55c5ad49 ("lib/raid6: build proper files on corresponding arch")
Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
Acked-by: H. Peter Anvin (Intel) <hpa@zytor.com>
---

 lib/raid6/test/Makefile | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/lib/raid6/test/Makefile b/lib/raid6/test/Makefile
index 3ab8720aa2f8..b9e6c3648be1 100644
--- a/lib/raid6/test/Makefile
+++ b/lib/raid6/test/Makefile
@@ -35,13 +35,13 @@ endif
 ifeq ($(IS_X86),yes)
         OBJS   += mmx.o sse1.o sse2.o avx2.o recov_ssse3.o recov_avx2.o avx512.o recov_avx512.o
         CFLAGS += $(shell echo "pshufb %xmm0, %xmm0" |		\
-                    gcc -c -x assembler - >&/dev/null &&	\
+                    gcc -c -x assembler - >/dev/null 2>&1 &&	\
                     rm ./-.o && echo -DCONFIG_AS_SSSE3=1)
         CFLAGS += $(shell echo "vpbroadcastb %xmm0, %ymm1" |	\
-                    gcc -c -x assembler - >&/dev/null &&	\
+                    gcc -c -x assembler - >/dev/null 2>&1 &&	\
                     rm ./-.o && echo -DCONFIG_AS_AVX2=1)
 	CFLAGS += $(shell echo "vpmovm2b %k1, %zmm5" |          \
-		    gcc -c -x assembler - >&/dev/null &&        \
+		    gcc -c -x assembler - >/dev/null 2>&1 &&	\
 		    rm ./-.o && echo -DCONFIG_AS_AVX512=1)
 else ifeq ($(HAS_NEON),yes)
         OBJS   += neon.o neon1.o neon2.o neon4.o neon8.o recov_neon.o recov_neon_inner.o
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200324084821.29944-2-masahiroy%40kernel.org.
