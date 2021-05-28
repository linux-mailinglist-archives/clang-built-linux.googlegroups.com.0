Return-Path: <clang-built-linux+bncBC53FPW2UIOBBZE4YWCQMGQEH2YS4XA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id A4F953947D0
	for <lists+clang-built-linux@lfdr.de>; Fri, 28 May 2021 22:11:17 +0200 (CEST)
Received: by mail-lj1-x23a.google.com with SMTP id i27-20020a2ea37b0000b02900f2c58a2986sf1825633ljn.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 28 May 2021 13:11:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622232677; cv=pass;
        d=google.com; s=arc-20160816;
        b=ebS+CmpmfSTZfl0kAA2xndEf5XT14/7X0ugjycQZRjQzH9aDw8Nv9NTBde2is64eJz
         DJNSpQfj+9oExBo6hVv6p4UHDPpUVL+UrGcCoXRbwj0In7wBXKMJG6Bw7q0GZVhSaJvg
         MBQPrzTf7IyQr7KlJTA6z1aIx7/TksLmcMpgK5A9loArdbOAMzuWvllnm6p1aa11ZS9H
         pA7+uPI/I+cg98tdxwdQuLCCc6A0X0p4QvFgHx+Q0jf0PWI16xqygpFK5QQZ3FIdhXQi
         Uzp4K0D838hjikYuBUvQSsP5o2Q+/OzkXmy10q3Y8dxwIXpLLrPwBAWBF/T82APiVSzL
         c6uQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=3YweYRyElcb2yfpu/CueciYiA4leiQAtF/xW3z/VVj8=;
        b=rx3dppiFYysNNKTgHMA4QQOQY632CDopurfEZ8NkOj6kKgzGH/iJXJco/Bfh8j4xeq
         llwQQeF5fn5mZStjRqEn4ElsQ2IOwdEaDLfVTHtMbx6hWNBSkuEuOasB9YAChFK18Eg2
         hf+U57TRCmap6Bm8PSApVuaq5QA1EVvNjGx7CEaIsQJns7aU4uoknNRLyptQAWz0CAP/
         Si66XpqicRO+WQYG9V5syjnOgFp/hGBafGvcvYvrFaKLJfk5YJ4JwAT9vL6RcFbZBQrv
         qqPwDfApQIPcvr6nV3ZZ1LtcjKMxxSQfXDE2liiU0IXzQBSj10fjQbEzHS7r3EtoQRgJ
         r/Hw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZNdLRror;
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::134 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3YweYRyElcb2yfpu/CueciYiA4leiQAtF/xW3z/VVj8=;
        b=jtEno2wCKjgd6eRP9Let2d+RWS0dGzEZGx6f4BvfjsCpg5uBOjP+++vba1mlXVA6mu
         wuhxcPBIPFM6BKVQ5QtPZKIsSgmV6xdIeMDFsxsyVlPX0ZLYSs8DqeZyic/JPCikF9Qx
         0giojASxTvGwo5Tn46DDwJWwc3klGw/7T7WHU4JYLc8NNFrMK1Kyv4V/S3y5DWmHF7Gf
         4H2rtkdhzgbK6T9frsnDnyJpPaZNxxXVYyE2/H4W/rDUuOJNReBSKyFHujQtsjytsIoi
         BKjci2eSQnosEt4moFlv5AEkx+LAxrcbjsPRTK906vuF05DWqQuQWrdP+W279jjeS82B
         kRDw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3YweYRyElcb2yfpu/CueciYiA4leiQAtF/xW3z/VVj8=;
        b=fT7Cro9iI/hpwgXm9RA4N3hLb5tMyGKS9bqixnwYgxKTnCqh+OM+5jqVxk6XyqTL97
         KUFFTkhGUFdVw3+wn2S24L/+IgW5EM7GDT4kR8CS/dnVZGESi2IuyFks7ngH14obS9Jk
         cV3/Hnnkay4sJhb03nqumYXWDtNVCo1uA6yagfy17B4LF4uZQ9e55Fe0wjkP463b6iwK
         IPrBAo7ZgylGO5SJjxFjrukXmz/Ah9Ro3yMXeypbHqbMxlbO2f9vn+2UIcAHxGVeZ+i3
         QFLJG33K3IffVhPcSMr85sX6rLCcNie08kjA98kAw+U1Qalck7iG9yIEAi08wtEbLs2p
         Euuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3YweYRyElcb2yfpu/CueciYiA4leiQAtF/xW3z/VVj8=;
        b=A4RXcBHV+6Vzu9S9cExlGIjGDVchamtnD6qvgEFRk7QA87okNKWUgXipwoCzHQnN1D
         0MJt5R9GiIhEfy0ZPpeJ+TWSWiSbAQ89XLEkdDheINBCvTc59HJ+wUIc5WdkFcsahQgd
         kSTDUOG5UsdIJD6hA4paqsZ9/ndnsYANCG/yDx+Dnexy44Kdvq95fsiZEUufPwZ2PxMl
         swvSpy8EBDokqUkj4A6CHLjG6jWUq+bVsYVeVWaDo2IOlH75OBSKXI4GTd6lMVuyYWlX
         ctxYs8NoaLbh/VVbezf5C0wnTza2LTy3jWSj3W3c7hRuvD86xT9ddZFowYyZh2ly53s+
         fMjQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530OcVtQc5Tb3d/wkJ+vqG4inZDqgJUzdeGlZy/+YFwh4xqdL/+Q
	CZDPrMchT1ST/UCLrTm48a0=
X-Google-Smtp-Source: ABdhPJxbeDsoWu9BBdGoExbSF6LxzcQuPsKaPczr0e3/LY53guFrmjzrR9BB7MFQhpj3K4Sw7jAigA==
X-Received: by 2002:ac2:4e05:: with SMTP id e5mr6772040lfr.613.1622232677203;
        Fri, 28 May 2021 13:11:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:592a:: with SMTP id v10ls3918474lfi.2.gmail; Fri, 28 May
 2021 13:11:16 -0700 (PDT)
X-Received: by 2002:a19:c7c5:: with SMTP id x188mr1701438lff.213.1622232676023;
        Fri, 28 May 2021 13:11:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622232676; cv=none;
        d=google.com; s=arc-20160816;
        b=YNS7wAFp5hMqfhXizuVby/kYXCoqr+ixodcySPHAPgR6Bhux2D9m/RCMyMw31URXqp
         9sqqNjzmZozSL5mZaqe98LSS/GNL3brHyT+WTqQ7tucGh4Wa6TlAL9dqhkhw0OImYwnB
         MlmjOSy2y+8ipEQUTGnn+O6c5DqCxcy3Vt9xvkHZYSEt6dMYaGhoFAczSgbhItuc/8jU
         T1BHCG4/ea9xZcLjTf+SidbQ514RiRP7s2D8UbQfkVd2PaI2IV6m+kNIKcibRfWWrfY4
         c6+HXdCyyDget+RVpkfeSSzsiArtdgc0v8OiZB0T5qoN2NX1qIET1xsvzAwqrgVwnWDP
         9xPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=mFwW7XSfRNsT3aVWbSn7LULfilPfTjG62qQhaigJR5c=;
        b=j3Axgaq+bpWRssMufalYyv2THv0EJSasDM9MQloP03G7zbiRG7/Udc3kXWAlrBsny1
         8eJu1uWgeoCvQYMNnaj29RTY5h1v2VchRg6wgShbqRb6Cw7cO7CT5XI/4TASbUJLcc6M
         BYvYbPhF2uoo+eOkAkrhyjOZHpNxJeVpBdlx4KboVXstQjrDxbm710tyExFhHOtDPrBY
         FHNOiW6fpH44ByEPb9ZWKY9+X8n25ytOHaIZWoNl39filvphVkgiRbwpb7ibT62BPPYw
         OrDrvtH0BkPhLS4dBN9jQDOObWcg1IedyITtUzkikRPT6OhwmO1B1cIKud0DpAgrs8xY
         ucAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZNdLRror;
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::134 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com. [2a00:1450:4864:20::134])
        by gmr-mx.google.com with ESMTPS id b39si217582lfv.1.2021.05.28.13.11.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 May 2021 13:11:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::134 as permitted sender) client-ip=2a00:1450:4864:20::134;
Received: by mail-lf1-x134.google.com with SMTP id b26so6998999lfq.4
        for <clang-built-linux@googlegroups.com>; Fri, 28 May 2021 13:11:16 -0700 (PDT)
X-Received: by 2002:a05:6512:3487:: with SMTP id v7mr7055648lfr.467.1622232675866;
        Fri, 28 May 2021 13:11:15 -0700 (PDT)
Received: from HyperiorArchMachine.bb.dnainternet.fi (dcx7x4yg81q1---xrfn1y-3.rev.dnainternet.fi. [2001:14ba:14f7:3c00:bcab:6bff:fe6e:22ea])
        by smtp.gmail.com with ESMTPSA id v26sm548511lfd.291.2021.05.28.13.11.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 May 2021 13:11:15 -0700 (PDT)
From: Jarmo Tiitto <jarmo.tiitto@gmail.com>
To: samitolvanen@google.com
Cc: wcw@google.com,
	nathan@kernel.org,
	ndesaulniers@google.com,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Jarmo Tiitto <jarmo.tiitto@gmail.com>
Subject: [PATCH 5/6] pgo: modules Fixup memory leak.
Date: Fri, 28 May 2021 23:11:07 +0300
Message-Id: <20210528201107.459362-1-jarmo.tiitto@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Original-Sender: Jarmo.Tiitto@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ZNdLRror;       spf=pass
 (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::134
 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Signed-off-by: Jarmo Tiitto <jarmo.tiitto@gmail.com>
---
 kernel/pgo/fs_mod.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/kernel/pgo/fs_mod.c b/kernel/pgo/fs_mod.c
index 0808d44227f1..2d1ff99e7982 100644
--- a/kernel/pgo/fs_mod.c
+++ b/kernel/pgo/fs_mod.c
@@ -261,6 +261,8 @@ static int prf_module_open(struct inode *inode, struct file *file)
 
 				if (!pinfo->buffer) {
 					err = -ENOMEM;
+					kfree(pinfo);
+					module_put(mod);
 					goto out;
 				}
 			}
@@ -373,7 +375,7 @@ static int pgo_module_notifier(struct notifier_block *nb, unsigned long event,
 			if (strcmp(data->mod->name, mod->name) == 0) {
 
 				mutex_lock(&prf_mod_lock);
-				/* remofe from profiled modules */
+				/* remove from profiled modules */
 				list_del_rcu(&data->link);
 				/* mark it stale */
 				WRITE_ONCE(data->mod, NULL);
-- 
2.31.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210528201107.459362-1-jarmo.tiitto%40gmail.com.
