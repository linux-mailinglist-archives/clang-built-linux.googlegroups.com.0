Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBN73RHZAKGQEECSIEWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3c.google.com (mail-qv1-xf3c.google.com [IPv6:2607:f8b0:4864:20::f3c])
	by mail.lfdr.de (Postfix) with ESMTPS id DA044158C6E
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 11:11:06 +0100 (CET)
Received: by mail-qv1-xf3c.google.com with SMTP id e26sf6858725qvb.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 02:11:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581415864; cv=pass;
        d=google.com; s=arc-20160816;
        b=jZrmT3urAN/sYNFFr4xN/ru5B2E/D4p9CpfeENvMemCcK1B1pzg4PTSTSyxuDOCe2U
         PWD3yD+uoxKYlTAYtccDb0ZeLMOKzoeMggpQdtxoG6HNsuMJAxIeL1fYNboooAPdyRyB
         h7UgPYvlcbpfdpn/MCoAB3IRAPe3ENfT81f0FTEcPP8YqVRZ/9JxPRo6HaBEIqeoNCsj
         rHV6FCkusYofjxUVZwGrX8xs/6AQ+h71wff2VzGXACxHuuaFRAbsQBTFZFxEoxC/AZoN
         b94xIl1I71q+n49qB/KjwUMt5a52LENEO2u4icq6wkOTQ/XHb48ffef5CGXFgfoBDJwT
         G3Iw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=3oFJBhXTBWXnQ0LRwQ/t++e6s+lR9MqIZEqOvDCzxyo=;
        b=mx/DM5QAqdsDK8FfVWygWxiXJZuUQ2+s6elGQvEykQGISoreU+3aX18P0IS4jaTv0Y
         ub5fmDLY18l7yzCwmSeDCrqUTIeSOqJxmR3NtAFEgPTEoIoW01NxVlh0vAMfAjkkMkog
         egHZ47xs1QUKNE+ppvjtwuvvYPfakb4Vnluh12aeq9PZa7ZKpl4IOQbVb/tspkiTaHzL
         GpCVm2ku+KvbqzAQFaQvt85ARv4X+sPX1WNXStY5U606zizVq8NKtHOHhtLwkJUgZrJv
         lNwDdL53DIAoqLSQn1Dngnwpk3oaWiwUZI11mhyFZZWs4ebZa2xrEIHOaaMa4qIZ0nUt
         koFA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZZlDsOIY;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3oFJBhXTBWXnQ0LRwQ/t++e6s+lR9MqIZEqOvDCzxyo=;
        b=Vg8H2e/7d6l05PpDqH7inLnIHl1zW9CJAPaHoBDfk+7BpmHtmj2ZZ3uCSCa1D1+LgT
         fnOVMI7d/DVWKxYcAPonlyYjDWp4Pszg6NBhK+sS/dLX9E50j7lJ0boIgyksbtUsgz4E
         gEGYH+Z7PBrnM2hUxnqAP0vfrbxdjojPide88Z8rtH57AOtA3J7Z6k5Ag8TXKZa/2u7x
         NzGwTu4KBx0nT3TwHO3XRZ7+YbvDgGXOl+kGlcrpZwEDC2Df2TuZwxpY7pR6Q4RPMbT3
         8JUFar9xjzYYHJOIjmzSo8oReoO6XoUBNZsyuKaomIWJa6vaWOkcAwCV+gJuEPJi2mlV
         PNzA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3oFJBhXTBWXnQ0LRwQ/t++e6s+lR9MqIZEqOvDCzxyo=;
        b=dw3ipGzHh7jZ005YlTWA/g7GLTEexjEtRLDdVutcgwVPdCyur9+1hRVW+CmR67ONxz
         ae7mGjs64AcEjRmUafbB7C8okGEgadH8IzVEztZvwid13L+12wV6CALxL8GPAbyX3WGW
         0noD1w8MG7+h3kXTQ0hOwGGl4EqvXOln8Ak2ykpO0cp/Uv+x57dTjPmEHS3qe5Nhsp3t
         Xcq5uUPC1kNTBYYwghIcO7u23kmFgRmx8hhTuV96b2ZimxgsAUbw/iTOolk+j0cKAkbd
         pYHGBzKi4I/aMhQzzavLBj0hyvui3H/B7H8FCjSrJ2qBBJkGS2QWy0LlUpUtvQ+N3R7l
         3WSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3oFJBhXTBWXnQ0LRwQ/t++e6s+lR9MqIZEqOvDCzxyo=;
        b=UES3jjVBd7MHqc2eUQ5U3TYrxxvMGzqhgweybZxYzHQJkT4LQd45Ew+hZ838FxcSd5
         trwLKauQj6KYRY3hfEymBj2fzEo4b97P3IcHBJvMWMoGKx1tXlyAwa3FgONxfITvTGJW
         aQmJ3PW/bBto+Augn55jrFyWZUDrGPCT8SjY8glxKHYnk6cM9649cSOxXOU/0Ob5qU+W
         qCQbb1LRRh/m20B2fj47I4VY7Tc6JjJK7Kzv4OP+bnDRJCkaQ07w/u9+6EooOH4Sonhj
         psjJfr9pt2kr3hNDmE2YZhQ9ak7T356P3CIGJELS/LN4ZbnBpkMPcJozjtFfch98kDx3
         YiJw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUOwmOf/y6g2gnw9S1patqLtiZWeF332eUusN2QRA4Nj2EpSgG3
	dRIjgXGnRR/mH1oPWlfWpsY=
X-Google-Smtp-Source: APXvYqxnZgz3sok2K8UbvVwPG43tTVxwZif7XnBFBtAwmwtX/LtMHgwtShhiDzrc5l3niUSLK4H7JQ==
X-Received: by 2002:a0c:c24f:: with SMTP id w15mr2202718qvh.66.1581415863665;
        Tue, 11 Feb 2020 02:11:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:1650:: with SMTP id f16ls2492611qvw.0.gmail; Tue,
 11 Feb 2020 02:11:03 -0800 (PST)
X-Received: by 2002:a0c:fac7:: with SMTP id p7mr14527619qvo.46.1581415863273;
        Tue, 11 Feb 2020 02:11:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581415863; cv=none;
        d=google.com; s=arc-20160816;
        b=wM9/vi7nSgvjjOly91FYVA2hYHC8VbL+sz6/yZrMIlUwxTp8EjU5l/0HeEEp50w+Z9
         MT9LyJ8JTFGW8qJ96GtjLehZKMyhstokPztHXyWwhvaVFKEEzybUNkgZT32swVaQg7Kv
         Gq5IbOIBJoMeM7empo9R24x6/47TzW+Z7/eaRB8F4LGFTRDqPbCUmI0/XBp6YyM2UuwC
         Ti/Z2PC+dTaxiWMh+B4H28iHuwVFj8CQluQm1XGDYf77loOArHHRbkXBggtNH+m1aySy
         Hd8Qkw+jOjJzsjkEQVq+8f0qx5QPexiZ5DGtAtw0Rfn0aTPdQJU39QUzsF1DbWQ95+vM
         hdOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ESpu3X/m1rC+KE32dukmoSN5K/JuyNt0NmiYl5Mpj98=;
        b=JcOhYpY7yjp+Ui5fWwbeNijTf8EJfO7H/OPSOkXW09uX1vXKHTAppuarjtW7KBX7ky
         abA/dYdUNBOS0Cjmp3JBBP9OAuNJlomm/VPTWqnmShcyHxEhzqxBiotO4C3NH1OGRMSU
         26chNnDGag4OwNmCJ0sEBOuwbl8e2HBPn9BIXJuQGmdrYtkWiPN1Sl6I72hCkdXoppIZ
         qFXqrd8gjLX9QuqYWCT1SxFhX/dGfJkz7uX+LhZ43Xtf+HGWEENGslzUmgHS7iqfiNwC
         zXX3yjBjIwy2mPNjB2wu75+gA8fAy4UIWXJEPE1+61WXSfkXK6rpQgxJUHRyF1dlDI1O
         6ZSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZZlDsOIY;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id c19si190138qtk.5.2020.02.11.02.11.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Feb 2020 02:11:03 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id q8so5262996pfh.7
        for <clang-built-linux@googlegroups.com>; Tue, 11 Feb 2020 02:11:03 -0800 (PST)
X-Received: by 2002:a63:5a65:: with SMTP id k37mr2437387pgm.264.1581415862172;
        Tue, 11 Feb 2020 02:11:02 -0800 (PST)
Received: from Ryzen-7-3700X.localdomain ([192.200.24.85])
        by smtp.gmail.com with ESMTPSA id v9sm2429853pja.26.2020.02.11.02.11.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Feb 2020 02:11:01 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: clang-built-linux@googlegroups.com
Cc: Dmitry Vyukov <dvyukov@google.com>,
	"Gustavo A. R. Silva" <gustavo@embeddedor.com>,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH RFC 3/6] tracing: Wrap section comparison in tracer_alloc_buffers with COMPARE_SECTIONS
Date: Tue, 11 Feb 2020 03:10:40 -0700
Message-Id: <20200211101043.3910-4-natechancellor@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200211101043.3910-1-natechancellor@gmail.com>
References: <20200211101043.3910-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ZZlDsOIY;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Clang warns:

../kernel/trace/trace.c:9335:33: warning: array comparison always
evaluates to true [-Wtautological-compare]
        if (__stop___trace_bprintk_fmt != __start___trace_bprintk_fmt)
                                       ^
1 warning generated.

These are not true arrays, they are linker defined symbols, which are
just addresses so there is not a real issue here. Use the
COMPARE_SECTIONS macro to silence this warning by casting the linker
defined symbols to unsigned long, which keeps the logic the same.

Link: https://github.com/ClangBuiltLinux/linux/issues/765
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 kernel/trace/trace.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/kernel/trace/trace.c b/kernel/trace/trace.c
index c797a15a1fc7..e1f3b16e457b 100644
--- a/kernel/trace/trace.c
+++ b/kernel/trace/trace.c
@@ -9332,7 +9332,7 @@ __init static int tracer_alloc_buffers(void)
 		goto out_free_buffer_mask;
 
 	/* Only allocate trace_printk buffers if a trace_printk exists */
-	if (__stop___trace_bprintk_fmt != __start___trace_bprintk_fmt)
+	if (COMPARE_SECTIONS(__stop___trace_bprintk_fmt, !=, __start___trace_bprintk_fmt))
 		/* Must be called before global_trace.buffer is allocated */
 		trace_printk_init_buffers();
 
-- 
2.25.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200211101043.3910-4-natechancellor%40gmail.com.
