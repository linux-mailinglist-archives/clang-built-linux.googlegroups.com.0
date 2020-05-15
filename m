Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBXG67L2QKGQEUZRHPTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id F3F0A1D52F4
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 May 2020 17:03:57 +0200 (CEST)
Received: by mail-pg1-x53e.google.com with SMTP id 22sf2016600pgf.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 May 2020 08:03:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589555036; cv=pass;
        d=google.com; s=arc-20160816;
        b=dBdZsAV19GX7qtKtTXHPeySnkhpNUDKCRU6dM0LXfVYZ86xO3fFiGDxKJTpaX8QEdD
         vvuadzTR7uAsdFdrdnTcItlWfWTDEXTW60XuqzdJFes0vQo4SdZuX+FGp5o02fgMXj2X
         HMlopZKKr3wYizkr79e2ukjvW47SjzX0Vom4Slovw7V4Xh5YhqMfJoVzloJNlHuUm+mQ
         7HpqSvxEUPoB1N+VYveTnpGbeiEzr/Ru+0uENynZY6Z0dg+476P8k1Ywznb2WLVuGpWn
         MBGmHkIeKw2LyCa3lfuxaGYBX9kmo1jyYZB95dA9ULY7HPPGz37O92ID6E+PjVry2UiJ
         WVew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=N7YcVbKjiUuoski9dvTD5dvXZyVpVivEbQKxA8Ddliw=;
        b=Y619EnYpdBHuXBk0tvRDu32t1Bjv+lEukd9NFjz2RymVzgqzKLUJHLCjrj2bDItGwa
         iLfvOnqjNPi1B1CRwD+k+fNE7bDCCMpmVn7WeW2dMWgWcMzRBq4C4GEl/Q+mC3r0fFIY
         yd5dMnJlbphKQCHltpuffVpBjtbfHkKYtRU7GtCCJq+Kw1nkU8xFe6+r5dov/XmqltuN
         D0G3uDlrhvEJd4OD/tjl59UEpyLxUsvTcOZuqEgB7fgtxVtg94t2gfD6cGAkJDht4g9v
         VDBUcQHdBpofA3v8hNKzHevcYgA/U/XfBI5VJSQwRWO43313gOFRE5lj0NZAZYceiA+9
         qFBw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CglnwgQ4;
       spf=pass (google.com: domain of 3w6--xgukebaubluhweewbu.secsbqdw-rkybj-bydknweewbuwhekfi.sec@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3W6--XgUKEbAUblUhWeeWbU.SecSbQdW-RkYbj-bYdknWeeWbUWhekfi.Sec@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=N7YcVbKjiUuoski9dvTD5dvXZyVpVivEbQKxA8Ddliw=;
        b=OMnMX411HAA4PuCOEQxaM+lr2Kj3qQB4/sJNOSB5Fp49uNtP2j0cpLglbbKpSDIlKz
         +gu7Kf5HRLM/nVcd9NNnJ5qIfgRnY2vM3sct6ET41pDA5lD1bmRfm90ZoWvcd7tt8oaj
         Chwe2ierU9wpssO8ifMgY+VaIZEFreDV4wwqk5JMT6VceL6y6ynhUUAv1IkpdeYPaiZM
         PgWq/wgHoghMdVCxW2NNt1eBoSyfe3qsyEVtS24vMUwdKG/40yRI03UTk9zIn2g/skzy
         KPGl15IrFdO1eY6hM9faQt/D9Bcl+Zd7wXKyNRl/5hKT3gfyLHGA/dD0Ny1te4r+tg3j
         TXFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=N7YcVbKjiUuoski9dvTD5dvXZyVpVivEbQKxA8Ddliw=;
        b=NCMLwjuXfrlU2iqgeV7npI1ttyOw72Xl3iN48k82fPtZbIuEejmM5XONhuFCwWIqMG
         hJG9CStSfSt+dzhoA2QkeMWRpRIHUuZ53/iS/2yo0HG2r+HMDE7ihoLQC9W4cngHp6PJ
         CNz7V+NXHFU+rlvkAyWIKX+8+ve87VZAwM3xALQDbwXj1nmYMkVYC6S1mJv3+cCT/TyV
         XSGZkKJoMisVq1Unrz7JWT9slLh32YzPdTSx7iLqpWeOWauGDRls4f/2OcJcHgamgB6t
         i1WsT4UvYEMh8QeowTmO270oUKoUHNKN9CVNdEwieTYADPHCVGLm5O8H3aU1t/iATRZc
         QgaA==
X-Gm-Message-State: AOAM531aaOebNFPXCtaef7pdSE5OSIkEiu9Is8Nxnpz1ZjWUSqPtjaFu
	yMi9uHdkqC9v26THa7FZEn4=
X-Google-Smtp-Source: ABdhPJyx3Ql62jiOTj3l6h686UfESf5Bfu4orjlNKbLBkCDPxJSiBcIA8T0HVFZxtdRrRjq4BUnPkw==
X-Received: by 2002:a62:1583:: with SMTP id 125mr4535940pfv.80.1589555036479;
        Fri, 15 May 2020 08:03:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:4b5c:: with SMTP id k28ls825361pgl.0.gmail; Fri, 15 May
 2020 08:03:56 -0700 (PDT)
X-Received: by 2002:a63:f242:: with SMTP id d2mr3706155pgk.212.1589555036030;
        Fri, 15 May 2020 08:03:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589555036; cv=none;
        d=google.com; s=arc-20160816;
        b=F95PvM5TYEeN+1SdQVCavIhbrBtzyJPvL538atTBkVxovPsMb2uN7RJkLMD18ublxQ
         b9OAB9hdwTAp1yYNd3TYUsNzSqe2CwCMEy2+W0vG08Sb4m6hl3lXwW+wQ/N6Vjn6ToI/
         pZj9GuTqwwQnEPEmlqk2W2WzgH1w4hxZ93zi9QdXcUgne3AvAl3gLmJgXebzmZC2zONL
         jP8YO7T+y97L2ONVb/erAsZMTkt6JVZLa5gZgexQcWlxDXofJ1nLbpPZr5bBpsIb2Ihr
         YXw1bl9oWKiNIJ0c0ddcWeO3K1aaYniJy+ZEuPTL+jqioSYX0FIm37RwXGALp2xhC98x
         hZlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=2TmNDvsOz0JxdxozHkAyPP+/TkRXJhNAPV4NJ14stug=;
        b=m6d23KiK2L5frGPW03qKS3TI7+T1IIUyt/0zPRdyXisUZTKXlM8sZmY63ACLajXGDa
         nauVRbEE1Dse6z+6GPcSW6aqhuPLZtnvSs3MYaZxkG+Ta3BBijBw3ZrEqIVtPDQzJw+X
         OXR9G988pdu3LkTeTXYq3Aj72grnw2UfLIdo12f8B14pMLB4IglBeVIWjMR4trUcV/nG
         u3NhuNX8Dtwbl57IGn/Aferc59/atG8ombxdl6A6EgKHdJlct3sjvjjhQMC7PjwFTweG
         wjn/W0VKtkTB3GuNl9/Cy09AxLXIIuU5SBjdsCzlrQG9CqNejIldPu6rOSR2up0ehJNZ
         zyJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CglnwgQ4;
       spf=pass (google.com: domain of 3w6--xgukebaubluhweewbu.secsbqdw-rkybj-bydknweewbuwhekfi.sec@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3W6--XgUKEbAUblUhWeeWbU.SecSbQdW-RkYbj-bYdknWeeWbUWhekfi.Sec@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id t141si192020pfc.5.2020.05.15.08.03.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 May 2020 08:03:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3w6--xgukebaubluhweewbu.secsbqdw-rkybj-bydknweewbuwhekfi.sec@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id h1so2734133qtu.13
        for <clang-built-linux@googlegroups.com>; Fri, 15 May 2020 08:03:55 -0700 (PDT)
X-Received: by 2002:a05:6214:3f0:: with SMTP id cf16mr4050654qvb.4.1589555035266;
 Fri, 15 May 2020 08:03:55 -0700 (PDT)
Date: Fri, 15 May 2020 17:03:32 +0200
In-Reply-To: <20200515150338.190344-1-elver@google.com>
Message-Id: <20200515150338.190344-5-elver@google.com>
Mime-Version: 1.0
References: <20200515150338.190344-1-elver@google.com>
X-Mailer: git-send-email 2.26.2.761.g0e0b3e54be-goog
Subject: [PATCH -tip 04/10] kcsan: Pass option tsan-instrument-read-before-write
 to Clang
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: elver@google.com
Cc: paulmck@kernel.org, dvyukov@google.com, glider@google.com, 
	andreyknvl@google.com, kasan-dev@googlegroups.com, 
	linux-kernel@vger.kernel.org, tglx@linutronix.de, mingo@kernel.org, 
	peterz@infradead.org, will@kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=CglnwgQ4;       spf=pass
 (google.com: domain of 3w6--xgukebaubluhweewbu.secsbqdw-rkybj-bydknweewbuwhekfi.sec@flex--elver.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3W6--XgUKEbAUblUhWeeWbU.SecSbQdW-RkYbj-bYdknWeeWbUWhekfi.Sec@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

Clang (unlike GCC) removes reads before writes with matching addresses
in the same basic block. This is an optimization for TSAN, since writes
will always cause conflict if the preceding read would have.

However, for KCSAN we cannot rely on this option, because we apply
several special rules to writes, in particular when the
KCSAN_ASSUME_PLAIN_WRITES_ATOMIC option is selected. To avoid missing
potential data races, pass the -tsan-instrument-read-before-write option
to Clang if it is available [1].

[1] https://github.com/llvm/llvm-project/commit/151ed6aa38a3ec6c01973b35f684586b6e1c0f7e

Signed-off-by: Marco Elver <elver@google.com>
---
 scripts/Makefile.kcsan | 1 +
 1 file changed, 1 insertion(+)

diff --git a/scripts/Makefile.kcsan b/scripts/Makefile.kcsan
index c02662b30a7c..ea4a6301633e 100644
--- a/scripts/Makefile.kcsan
+++ b/scripts/Makefile.kcsan
@@ -13,6 +13,7 @@ endif
 # if the absence of some options still allows us to use KCSAN in most cases.
 CFLAGS_KCSAN := -fsanitize=thread \
 	$(call cc-option,$(call cc-param,tsan-instrument-func-entry-exit=0) -fno-optimize-sibling-calls) \
+	$(call cc-option,$(call cc-param,tsan-instrument-read-before-write=1)) \
 	$(call cc-param,tsan-distinguish-volatile=1)
 
 endif # CONFIG_KCSAN
-- 
2.26.2.761.g0e0b3e54be-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200515150338.190344-5-elver%40google.com.
