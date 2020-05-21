Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBCODTH3AKGQE54LBGYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 671581DCBB7
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 13:10:02 +0200 (CEST)
Received: by mail-io1-xd37.google.com with SMTP id m5sf4425232ioq.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 04:10:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590059401; cv=pass;
        d=google.com; s=arc-20160816;
        b=SfBn4MKKVUYAotbrnT8/eCBmycgWGFmKyiZYT4tnq7G32hGyzaMO30gNTelyjlUMHg
         M6stYS2kksEE2v7d03QQuAxSSVEbzTrRTnF6zdDuhnQsCRL3mItBJtqqcJs0C+G3WE9Q
         aI/7e6yOPqKpXNayzYxeBT6ZE6wmi3mO8ApQkw9bns8OucKIHihUpVMMEtQ3AeTEvjl0
         q7vPrlYJVfzvGOqTj/5wWxWWB4/LmqIhOpQ8kRJLeKKagfmVbKSA4wOPSHQ7MPg7RMG5
         prxSKDdJRcc+fRtmNUNLywZK664SgDhQeGQgw6edrVL4oZLYOoVP7y2DHcOBYut9YAxY
         Dc3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=udlW88vZtUdHd3ff70P0DFiNLMN7gsOJFxNXp/qQ6E0=;
        b=no22S0bSJIuwiwk2kBOTKsQwGw/HtscJlo443k15ihDOC4m4nULfzDD6t1FjygbiIV
         dRsIuJWUS0WrAR7frVzWDTlci2xBDfO+1ddF6hzH7gQRhEAHVsJM2Dla5PPmGjWV0p0G
         5v07neg7U3hB+dPPRltkuYy1AL3JhkrD3ourFeKRccG26azH2O+R+QfZv9eITRxQCZ4/
         g8mPKmcxNcABU+7tqpMal8AbC7fStsG6/VRR+Qcj09R5VMVXe4F3BdPlj2AbafsiQaWr
         tlH5J7F5oH+Dhd8MskeajMpRVGkgtHcWNpvLnkDd2xWAQatHu5fcmpSdeRr66jZNAWuy
         FuMw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YM6yTs41;
       spf=pass (google.com: domain of 3h2hgxgukewacjtcpemmejc.amkaj8le-9sgjr-jglsvemmejcepmsnq.amk@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3h2HGXgUKEWACJTCPEMMEJC.AMKAJ8LE-9SGJR-JGLSVEMMEJCEPMSNQ.AMK@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=udlW88vZtUdHd3ff70P0DFiNLMN7gsOJFxNXp/qQ6E0=;
        b=fcQMWZOQ6RnDJayvedju8NdOglxyNaHsKvsh3LuaL08pRpxRLIclZcDq2zfU0+mKrb
         ImbbvSiKs2ahRjtctDKoCVfldcWhOhhSeK6ipnbN7WslrwdTidG2eqmI2bgbeFticoCM
         KqLGr1EkH4RdvuIhr+HK0wsQTxNNC2il8ZgR7/owc0/iYBMYlOMgp8n1upq9CZu/BMjb
         gSYt7ZO/Tjs7L1E28h8VxH+i4RJcgWVZx5iDW08mWCuBeAiQhCueNsKESZWvCudQeOJe
         Z3qMoj1cprXnpoKWkdOW5i2m3s8UuiEx5Ah0oA/OWUKXXsloO1mrUvAAbcnmRAITP375
         jcnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=udlW88vZtUdHd3ff70P0DFiNLMN7gsOJFxNXp/qQ6E0=;
        b=pn3Swou7Xfk2W13tueP4P7a/0wEKugkLyAw5L+pWGrpujSdpAVIKJov9bbZoud+tb+
         slMxF4Q3167GWxjzUGqG2MiS7xSA5l2L+vxWZ1TV3YU06CLqRmy5AVxsKC6ETbnWB1tx
         MYJXiXr4C4GQ9VrpL4gawyjG9HaB8XqMV6VpxDnkTgxeA+mOcHo1j7FYV6pNnGmp0zzD
         +pj6Kwi3Bg7lnf8g4k77E+7nlaibJLh3S/BFfDFhmxCjtPym+jtTVzoNz35NqZ6i9DMg
         Iw7GcdqHgcfyb8ON4RHPgbPOvJbbuTSO1mnXEtNVBKm4NI2O0PsqWlgj2b6N/9QQmbuv
         GZuA==
X-Gm-Message-State: AOAM530BhX7oZo18IqIVTr00PnFB5ixVyWzA5piFyXUJongfuOZYJD/e
	3CXewMPzEtc3yjOY43/131w=
X-Google-Smtp-Source: ABdhPJzZ9Yf6fgjR1cMWEVDkLiVI5oBSGFLXUAqz4S/Fc0x047UQjFtp8wPmUGaQSAUJg3GrLMuWDQ==
X-Received: by 2002:a92:3556:: with SMTP id c83mr7242113ila.218.1590059401098;
        Thu, 21 May 2020 04:10:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9718:: with SMTP id h24ls272357iol.9.gmail; Thu, 21 May
 2020 04:10:00 -0700 (PDT)
X-Received: by 2002:a6b:ab03:: with SMTP id u3mr7111676ioe.148.1590059400021;
        Thu, 21 May 2020 04:10:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590059400; cv=none;
        d=google.com; s=arc-20160816;
        b=ukZcqYjlWczaT8TsxN+q/oSxKF8NxR4kGxO/NBpxF0jLtxnBbhzCIRzFADx4lLA606
         7dwAEOADnGCF2v79DDIanMLNaW20/ZzvMb13HExhjMtTAA1KinsTgfPFusustSmrfHk4
         bUadA9s+hUUjPDhOYs29v9EdmKPFWNBRk4D2w8SSkA3GaEN5L0lw1VSKPCDc2LsH0uz5
         xXoIKTIYzhWCOlppRzqS9mHr8Br+uXaaT1/EhK0EaG/zCCQYud9zzoMRzB/XXc3Gqjgy
         tJ+DOPO+BT2AxMOYupPDjsQaWNLkf1DsMt2oUbRhQTdLuLCWKyiGGOgMwkguNnK38PU3
         OMvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=maeQQXffB2UguUhgEnnewdiQJy0yPCx7FVOuZ5TWJ5k=;
        b=VA0Ti8FAwjhk5kah+Jw2ziulEOMrD14jRXaa27zwytQ2xUa9dOuT4VyRjaE+X6pzw/
         jHcWHNaN4P+TX8Uje417th/YIqgV0vvOyShHDTouybQTSPWxzTeK9LzfYkxjxVzX/CMO
         gkjg637CXoxrkWxyfTsDRXadCnIKOCEDq/xahg3V14CZnYuRX3zlcAt/WIht9NQBufPp
         L34zcKSTOBG+DwEiYtrEUg9itOIimaYRZKBduw1R+ald2MOd2Q+d4NTEbnhSoIu9Hq9h
         XUrB5FXrDmVYBSHDOOk7TTekgHATyPPbyJWQvvCmJyPULdlXxh0KWoJyymrlA96PGfkY
         lt8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YM6yTs41;
       spf=pass (google.com: domain of 3h2hgxgukewacjtcpemmejc.amkaj8le-9sgjr-jglsvemmejcepmsnq.amk@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3h2HGXgUKEWACJTCPEMMEJC.AMKAJ8LE-9SGJR-JGLSVEMMEJCEPMSNQ.AMK@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id b11si298017ilf.4.2020.05.21.04.10.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 May 2020 04:10:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3h2hgxgukewacjtcpemmejc.amkaj8le-9sgjr-jglsvemmejcepmsnq.amk@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id y7so4914707ybj.15
        for <clang-built-linux@googlegroups.com>; Thu, 21 May 2020 04:09:59 -0700 (PDT)
X-Received: by 2002:a25:9010:: with SMTP id s16mr1833681ybl.2.1590059399495;
 Thu, 21 May 2020 04:09:59 -0700 (PDT)
Date: Thu, 21 May 2020 13:08:47 +0200
In-Reply-To: <20200521110854.114437-1-elver@google.com>
Message-Id: <20200521110854.114437-5-elver@google.com>
Mime-Version: 1.0
References: <20200521110854.114437-1-elver@google.com>
X-Mailer: git-send-email 2.26.2.761.g0e0b3e54be-goog
Subject: [PATCH -tip v2 04/11] kcsan: Pass option tsan-instrument-read-before-write
 to Clang
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: elver@google.com
Cc: paulmck@kernel.org, dvyukov@google.com, glider@google.com, 
	andreyknvl@google.com, kasan-dev@googlegroups.com, 
	linux-kernel@vger.kernel.org, tglx@linutronix.de, mingo@kernel.org, 
	peterz@infradead.org, will@kernel.org, clang-built-linux@googlegroups.com, 
	bp@alien8.de
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=YM6yTs41;       spf=pass
 (google.com: domain of 3h2hgxgukewacjtcpemmejc.amkaj8le-9sgjr-jglsvemmejcepmsnq.amk@flex--elver.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3h2HGXgUKEWACJTCPEMMEJC.AMKAJ8LE-9SGJR-JGLSVEMMEJCEPMSNQ.AMK@flex--elver.bounces.google.com;
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
index 75d2942b9437..bd4da1af5953 100644
--- a/scripts/Makefile.kcsan
+++ b/scripts/Makefile.kcsan
@@ -13,6 +13,7 @@ endif
 # of some options does not break KCSAN nor causes false positive reports.
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200521110854.114437-5-elver%40google.com.
