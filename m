Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBZO67L2QKGQE257YPWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 2021B1D52FB
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 May 2020 17:04:07 +0200 (CEST)
Received: by mail-oi1-x23d.google.com with SMTP id p184sf1396408oif.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 May 2020 08:04:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589555046; cv=pass;
        d=google.com; s=arc-20160816;
        b=kthDobNxvLuCL8swSc8Ng99/qrkm4t5co5JyEVMHfq1V/w66u9C2qgRB0uW4+xemah
         JR6WcwUD2ObEtxTPaJ0fhCSdJQv30H7/h5dAUtyICR2Ueyetqo6lZO0Kmj7F2wkaovje
         yUI9WcXYmJUimisrJHXYwd8ueHeRvV0wSusG/tSU8yH9k5zvekHlJGtR7dZkPwA0oKBl
         hVdxKyfRbYkoFRM73SWse9ekGu9vkLy8xNl8t/0W+7i8ubqYJKDTmuLYGmhVDnl1RJ/z
         JRaYTfP2u90OILlMLcbHUSa8D8GV6wpylzXvgfg/t9SgNzDxxJw/1Wpv54r4C6qRWMwZ
         Kcpg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=k1Et9nDtMe3U7QVxXatBOAkM9m/yXBY/O5MT4m4697I=;
        b=WHd57rReKuHlCtMdT4F3DSaUd7paVYUx07bc8FLOpVIfIHeZoB1gi6jiS2jSfWtcoy
         i6+CvELb1mZsHmPI+Qok6EC0vfX+L2V+65qVPbT6P62Ea+Zq0puGzz1WcAPKHOeZhoYS
         9MPNaZptzgL2cdjoNfFJn6HHakMOEI0Qv9QIqofhWHs1t8RRQjX0STfgqdthwlByVTFu
         q/Em0nRWeUlaQgsMDRH8A6gTf8bszbci59Odel23qxHhgwpHxuD/ViSaRWaywUmso+29
         c7E+QBOnCxD25LuLR0uOOCF9ZD4XAhMIakh7E07HVvWqzonyVcX3YtWgwRvUPdJG81gA
         /WKA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=H9vVXern;
       spf=pass (google.com: domain of 3zk--xgukebkdkudqfnnfkd.bnlbkzmf-athks-khmtwfnnfkdfqntor.bnl@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3ZK--XgUKEbkdkudqfnnfkd.bnlbkZmf-athks-khmtwfnnfkdfqntor.bnl@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k1Et9nDtMe3U7QVxXatBOAkM9m/yXBY/O5MT4m4697I=;
        b=KLeaPRz3/aEaV8UR0oKGGxDhbs6uE+6b5WAQ9qH6C5pt+McgqDJsACu6CpR7aYPceR
         HtBLSVMQnZOedNmYfYBwtn1Y4ZOmQRJeLB3sSybUknJW0mbDbSykmpG++twBffpl0OAU
         k6hP7nmp5iTqpTYm8vLUCM/oLtoR2MeJbH8dZH3IwAOXeQOHS+KoJhz8Gez3m3NIwSKn
         +2MpWwEOxmy/8Jnq8c5o7zMHmnGNmidCGOTsi+PXtMb6cqvtNzBW0TI1dRrqF5qSf/ez
         4SsIlldYP2eXh+SyKlrgZvMS4EozeSpEL9gG1+aRS723fuwqih26nLyENwuUOeb+MC+V
         G6uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k1Et9nDtMe3U7QVxXatBOAkM9m/yXBY/O5MT4m4697I=;
        b=dMJ7bk5kQDI9dXAfsj/v5LAd891mFhP7cPJvR29P7zxB21qCvTDTz3szoO78hY9kuW
         7kDnN7MAuldY9E2uDLqyyTYra3t+ePiE4RhiLOo5u6tUNS3tZfBg6aj8/d/zoZ0kVxwc
         2tUbbvzChrwohWusyOR5WNHTFl/RfjDyKjr98hyUgeQsvgUBe9AiQ25yfSjl+dgG9nzM
         ZwA+wok9RJa7p+RaZR1Su+Dx9xQrNtoEGCvTb/aWngXSPlWnLoEmRqYUukRFdEmZQwVX
         S4EV7A4QdIgTWccPK+R1CLbk/M4edrcR6NZXbynpdrvP/OPk58sxllqzxgQ9LMedAcmY
         lf0Q==
X-Gm-Message-State: AOAM532UzLP0mhLTZfdmY0MJk8Kr42toLfjhwGMpV2xdWmQRR1lZ/2x9
	gdK5GJHemlCA0CDEC7dFocg=
X-Google-Smtp-Source: ABdhPJwKPabANjQ/8D9+L87qfZ8busENLH2/EydhF3iJPt4OAhN3h6eT1qPqdtnwHExID7HEaQh7iA==
X-Received: by 2002:aca:3883:: with SMTP id f125mr2528295oia.28.1589555046042;
        Fri, 15 May 2020 08:04:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6e97:: with SMTP id a23ls588328otr.2.gmail; Fri, 15 May
 2020 08:04:05 -0700 (PDT)
X-Received: by 2002:a05:6830:120a:: with SMTP id r10mr2684345otp.74.1589555045378;
        Fri, 15 May 2020 08:04:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589555045; cv=none;
        d=google.com; s=arc-20160816;
        b=UoBCBwXGX2e6Qy+jL16faQotqT4LrQzuWvHe/pI8kfE1vFL76srJHRExC3Dxo5bLEM
         05tTghAPnxqjW4gAfjPDdAjkfNPBtF7iEqmn4HbnZg9pR3f9AOpRJxNOUEjJbsHiNrNv
         Mud8bZtaUjqkQcgFu/I2/mOizisFBaxqR+3aqTR/dSlnTEK+PE/7EAlZ0CRlc3dM+nib
         wOc4ddpibn3ZozyZQAzwYzNB02jMunySc1DNQ004SNeaupCR7hVS9PBetmAj9IMREwpl
         ern04bqLiK7+0E4rGhQarkf4oAnz7e9frZKekTCbdc8xDJxBzpzxbu+zImyTwTNCxudF
         OBOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=bOmDunhfUaahaaiKVLHLTe7nnH/k9WP55G/+iETR4Xc=;
        b=Jf/dnqS4DeAurumUiBAqtJQEfphKulETDt3nb1sTQEOrX3g1BE54douGfDvGgEpxwK
         XsF48iPm8qhSatibPy+vNgSOxlMAew3hDPXDdsY87OiR0DxwUnhLdnMMAE+9TFjc25w/
         0CfPrN1HovgGQiVRVGReFOGv28DeyHg7CpkZyJRzGaKJHVQAZrHqR+IdiwMfLO61GhQp
         1tc5vg2zk7eWTFOkh4TzenAcxSpy/IacjgjJ9W2tCNKe26x99dADbEOwGKs9mniRoFch
         +uuLT4po5zbjelbnJeqjOch/XmPW3+MbUXbAedMt21V4CKHO2GrvlS4+a6SXoJvJNdcP
         ExFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=H9vVXern;
       spf=pass (google.com: domain of 3zk--xgukebkdkudqfnnfkd.bnlbkzmf-athks-khmtwfnnfkdfqntor.bnl@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3ZK--XgUKEbkdkudqfnnfkd.bnlbkZmf-athks-khmtwfnnfkdfqntor.bnl@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id x23si176336otq.4.2020.05.15.08.04.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 May 2020 08:04:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3zk--xgukebkdkudqfnnfkd.bnlbkzmf-athks-khmtwfnnfkdfqntor.bnl@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id w15so2835499ybp.16
        for <clang-built-linux@googlegroups.com>; Fri, 15 May 2020 08:04:05 -0700 (PDT)
X-Received: by 2002:a25:d786:: with SMTP id o128mr5956484ybg.519.1589555044732;
 Fri, 15 May 2020 08:04:04 -0700 (PDT)
Date: Fri, 15 May 2020 17:03:36 +0200
In-Reply-To: <20200515150338.190344-1-elver@google.com>
Message-Id: <20200515150338.190344-9-elver@google.com>
Mime-Version: 1.0
References: <20200515150338.190344-1-elver@google.com>
X-Mailer: git-send-email 2.26.2.761.g0e0b3e54be-goog
Subject: [PATCH -tip 08/10] READ_ONCE, WRITE_ONCE: Remove data_race() wrapping
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: elver@google.com
Cc: paulmck@kernel.org, dvyukov@google.com, glider@google.com, 
	andreyknvl@google.com, kasan-dev@googlegroups.com, 
	linux-kernel@vger.kernel.org, tglx@linutronix.de, mingo@kernel.org, 
	peterz@infradead.org, will@kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=H9vVXern;       spf=pass
 (google.com: domain of 3zk--xgukebkdkudqfnnfkd.bnlbkzmf-athks-khmtwfnnfkdfqntor.bnl@flex--elver.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3ZK--XgUKEbkdkudqfnnfkd.bnlbkZmf-athks-khmtwfnnfkdfqntor.bnl@flex--elver.bounces.google.com;
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

The volatile access no longer needs to be wrapped in data_race(),
because we require compilers that emit instrumentation distinguishing
volatile accesses.

Signed-off-by: Marco Elver <elver@google.com>
---
 include/linux/compiler.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/linux/compiler.h b/include/linux/compiler.h
index 17c98b215572..fce56402c082 100644
--- a/include/linux/compiler.h
+++ b/include/linux/compiler.h
@@ -229,7 +229,7 @@ void ftrace_likely_update(struct ftrace_likely_data *f, int val,
 #define __READ_ONCE_SCALAR(x)						\
 ({									\
 	typeof(x) *__xp = &(x);						\
-	__unqual_scalar_typeof(x) __x = data_race(__READ_ONCE(*__xp));	\
+	__unqual_scalar_typeof(x) __x = __READ_ONCE(*__xp);		\
 	kcsan_check_atomic_read(__xp, sizeof(*__xp));			\
 	smp_read_barrier_depends();					\
 	(typeof(x))__x;							\
@@ -250,7 +250,7 @@ do {									\
 do {									\
 	typeof(x) *__xp = &(x);						\
 	kcsan_check_atomic_write(__xp, sizeof(*__xp));			\
-	data_race(({ __WRITE_ONCE(*__xp, val); 0; }));			\
+	__WRITE_ONCE(*__xp, val);					\
 } while (0)
 
 #define WRITE_ONCE(x, val)						\
-- 
2.26.2.761.g0e0b3e54be-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200515150338.190344-9-elver%40google.com.
