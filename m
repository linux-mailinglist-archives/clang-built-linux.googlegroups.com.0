Return-Path: <clang-built-linux+bncBAABBF6D6HZQKGQEBBCDAOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 76BC9193A32
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 09:02:33 +0100 (CET)
Received: by mail-pg1-x53e.google.com with SMTP id d124sf4101156pgc.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 01:02:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585209752; cv=pass;
        d=google.com; s=arc-20160816;
        b=KZwyQ/DsYaYXOYjpLdlzRb38fXPkQCr41AlS6YOyyQW3383FMTZAnWN/4JfJW+R90F
         Ur0ygqiW0R1LW2MaAm1OB76DzRfmNLHt6l2pFKlHC6JNyERXkiXT2h22dnALlx6xKAf+
         ZoGTlluC8+PmPKKlaq+0WSNbC5dPw3sb0vW9oHRq0H7jEiRJC+wdSPa41UsL0sKomv96
         IHERLJZGR01+Tm1Uu5K+dcj+ZFQWbQt+5kV+qL4gsSPly9y6lY08H8QgkSJjJRZ6+55j
         SHMIPYKwNBmpfQwCddatc8yOkRxdH1voSXRWiQwT3PAoBhc23O7IMM7VL7kDPnlDJNKS
         xGoA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:dkim-filter:mime-version:sender
         :dkim-signature;
        bh=0yBC7rqhjxqZenBLG7SfVcdX3FlfHV9N4VoR4RSpdPk=;
        b=WVZOWKsdTKuozs0An+agjoKO20MzKqS8CSSjTL1x79sFy9psQTPUCKwX7UYJXjhY86
         KEhFprg6WZwsMEw62N4ySp0TGpa6WB4RNIUkCW2iSzjWAMvW7BKrcEAulDP1gLxpPIQ5
         UPzP6j2VDVJyeoybQ0VWm8itMkzXYb4INtJP+lKJU4RfPR/WVe0BjBQV4VciPiyX+3Ix
         4POOHLEq7Jw7+5kfoA/HYK2JtuflVdWs0CJitcqHcVVpijmKarAS+qiajh5HHo5JYUwg
         eRw02tIdVyoOvcSVHS6iCEH9GD/H0qZqpPxZLFc8OVZU0O9TQLBl1FF696BgF+D/k99c
         AGng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="Szxs/tTC";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0yBC7rqhjxqZenBLG7SfVcdX3FlfHV9N4VoR4RSpdPk=;
        b=UKQ3+s5gAxbQ9E8XqXHKhX7CYF/DG8YKQ3MrbkGrPz2SSw+UzfQZ+3s+YrOZtW9YZt
         LaxE59z4uY1ltWofJxRhzQ76CnF2SwB8tgaHd/BzFf0l+9LCr+vnT0uZuWXPq5USvq6B
         yPJijVWPpqxO+EV6vFAGeXB+GVY3jVxwHXRTFiwkLJV7YMuQT7DY0s/a5v3pqsmKjlJ2
         ai6PkmgCblbj50GjZ9QZLt2mKcEHFwFJfat6FIKshRBG/vw71ABIxdfiaReSJ+NYC5oE
         UI+w3uH8MgAx0m/RzBwy6wGfJcvb8F3bSD/3vqsSeyGmbiiMypEBJb5DO57WK/kMjM4L
         ACkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0yBC7rqhjxqZenBLG7SfVcdX3FlfHV9N4VoR4RSpdPk=;
        b=tqnKURddR/wvc2TuAlI1klkS325G74OKwr5GQ+rCPus9seXq+Z3jd06AGUnFY4vD7I
         zBDVL+5M07YizEqU5nIH2KvqooqGXoDIi39pLy9JB1zkmz4HM/X+q325X1pDlnYRm+gY
         GVxanKscUucZOAia5OBZlw8Tw5ETS+f5bUnGOk2VDl1byvRRcym38ohICXJg1KIrn/9r
         ysPeMyyshDwtrvT3fvFCHo05sJFMHCfCTO5aiaI0T0jvvVFbuOm01rAAfOoKOst2oNyv
         a49DZLcrxkgqtuP6yLwaWtcoRNWbpuWwnzVL1mRjdmxpSCEhQmFWwlN3lq18vfyGRgtF
         OZZA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2DvjAlmbdtE8wLPH35MiuNhBTfQhwIe5vd6p43V4L4i0lHITtK
	mfSYeDwlPTbhOyVMoGhIbyI=
X-Google-Smtp-Source: ADFU+vvDiTlljOp+FOEDkH574c94gnHX/h3Vkha1s7PrZki28QV8dzoYelEzyeljxw97PjUd0JJ2/w==
X-Received: by 2002:a17:902:c083:: with SMTP id j3mr6937371pld.240.1585209751857;
        Thu, 26 Mar 2020 01:02:31 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9708:: with SMTP id a8ls3146005pfg.9.gmail; Thu, 26 Mar
 2020 01:02:31 -0700 (PDT)
X-Received: by 2002:a62:778d:: with SMTP id s135mr8011463pfc.21.1585209751382;
        Thu, 26 Mar 2020 01:02:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585209751; cv=none;
        d=google.com; s=arc-20160816;
        b=U5dd1RCQ2RKCvcvlq22YTXqHLhWExtoAd1ASWT4D1rxTYAhl7ecYtT8/Fq/w9OcwHL
         IVRUsWm+qhj5gu0Dqk7xlLBc5rZJAtHMg9pg+PitW3OAlsj3fh2PnAf0ihZiK4R9cqe7
         XvMW6HpwzScvaPGX3lI55JA91vezR1L0wKsl2lF5fdsZ2pATAqlTWBsqRVb7tTKtn7fq
         5IUuGHeaiECdj6w/h1Ia7wEqDp3e2tco1QBZPM34ZYME3LgYJjRQQKzq4iX9trQ/9WQm
         R09nteeqPW66HF+faNsJvJa2eeUGSPYLTfujzWoTXI6R3VgtfxLUBgqXwesntxr0Xs41
         Ub6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:dkim-filter;
        bh=LtWeUWp0ttfpJ5z1d5FhHMR2PikZUhMmjkf5NulQvsI=;
        b=KVtqXgfBqyBZXow/ayklo13CdPlxX/XO9dr75sQ1r5uoLSiotcNnQMZylSQuojXQ5f
         Y3Nlr7u4MqkwF6hQxzMCs40pBecPkCagc3gE35/DzCkViGMTFGBybcsrMtGaTH/QXC6U
         wocimiNzklNZvaBjsSv+kilRpLbXNU6PGu+Yonraqj95DKVVM4T1djrdwI/CEcc9paK0
         x9upXR4e2QrPDSwEZVSJt3YPwQaL7TR/zZSWnVD369r3eur6HDPIE+Mb3NT16xSGhpOw
         RnayA7Syr9E7NaQNj3QtGUoDq9x+Rg5GHJt1ij++e+TjoWrRn6fpSYLnt83keeWcawhf
         o3Ew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="Szxs/tTC";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-11.nifty.com (conuserg-11.nifty.com. [210.131.2.78])
        by gmr-mx.google.com with ESMTPS id m21si86706pls.5.2020.03.26.01.02.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2020 01:02:31 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) client-ip=210.131.2.78;
Received: from pug.e01.socionext.com (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp [153.142.97.92]) (authenticated)
	by conuserg-11.nifty.com with ESMTP id 02Q81Wph002183;
	Thu, 26 Mar 2020 17:01:55 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-11.nifty.com 02Q81Wph002183
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Thomas Gleixner <tglx@linutronix.de>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Borislav Petkov <bp@alien8.de>, Peter Zijlstra <peterz@infradead.org>,
        "H . Peter Anvin" <hpa@zytor.com>, x86@kernel.org,
        "Jason A . Donenfeld" <Jason@zx2c4.com>,
        clang-built-linux@googlegroups.com, Borislav Petkov <bp@suse.de>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Jonathan Corbet <corbet@lwn.net>, linux-doc@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 14/16] Documentation/changes: Raise minimum supported binutils version to 2.23
Date: Thu, 26 Mar 2020 17:01:02 +0900
Message-Id: <20200326080104.27286-15-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200326080104.27286-1-masahiroy@kernel.org>
References: <20200326080104.27286-1-masahiroy@kernel.org>
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b="Szxs/tTC";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org
 does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

Changes in v2: None

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200326080104.27286-15-masahiroy%40kernel.org.
