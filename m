Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB4EPTPZAKGQEY4L2KSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3c.google.com (mail-qv1-xf3c.google.com [IPv6:2607:f8b0:4864:20::f3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 79EEA15E0F3
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 17:16:49 +0100 (CET)
Received: by mail-qv1-xf3c.google.com with SMTP id v3sf6019878qvm.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 08:16:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581697008; cv=pass;
        d=google.com; s=arc-20160816;
        b=a4/7yxPi2HwtNfvmnO4VxFKJOiSSe6y6hAGXGSaVNwBSpd4HDJpjO3lhebSBYiXT1v
         5e4RhMqDoAmAPFr2bnDO4JeF+154nBBJGf4ViCh4ryE+JexmiNqXwPi4jbSEADRqn9xy
         /fzuD7CYrBHP8iVNDP1l/WK1hThJDIHnEMG+o8aEHbssBpIz4o0xig1LEmSbsSQjiuaP
         4DzWj6T8ymEnr98Yr0/B0RR5ivnotA26IPlXscuoP63p/tTPDrEGNtfOut8YzeVbFzu8
         RN4Xu/pH4HYBw+dx1uxd3BIsgzytSWlLA1W/yozJ8DMa6sTL5PeykGGfpZTaMaO67IVG
         ePuw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=8TjnQQKgVHhmEtCOJSEgSwKB/8H1urVOoHGSn17iMb8=;
        b=FfaMpKjNcpBk5paQXEXRHBEAkwFwSc17vND36uuxDed8sq9UPhtOFdgQcQWMzLnaSu
         kAmYRW6uM0EwNhmdmZZHq5Iq3y0zioEn1HAyaks1rohDa79evMy5we1idvfx8j6Yyzxo
         EtdQskq6NtowBWNpsi2pcaRNE6EwE8cscYSDgT+6IsgNzXUPWs0dSURsIicgG7WuuKZg
         L09tmAF3rZcKcSgJkNsrB90CW1EdtOPfxIqhpBIXj0mL2op6T2lACzgp1kIARdJDIEd/
         uYedrtPIRxfFBkMIwmWeNh6V0NO/GL3QSuftyFrku1d3kIKYbfuzxX+cFW+IXjuvwUUg
         4L0g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=LsbL24Wm;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8TjnQQKgVHhmEtCOJSEgSwKB/8H1urVOoHGSn17iMb8=;
        b=l+Mh7UZMyHcRDARswh3H8IR6w8EIOxIQqkXSjJ52I87xqEV1w2v0uIOeZX2Gu7MzYW
         rsypkOkX52t3xsUQHg8vybuTtjquXy9/wFqLwiqIytCU+YC5dgHoIrCLeWDrBzEjlcit
         USagiWKa/5/qth5Y7NYuPE9hhBT46z9nyaTvHGtQohHtjWtDZIh7ae8rrio8qNq3EIsg
         O2QATOBLP2gTN3+NTzbAtk9pLhLq+bwf6SIsJLR5lQTIMypVud/7dVgNDXCmBXOG32ym
         cOS+TUTmMLlVimetqyQMvZEMNkq5U5PFDu4KQ+dwY+Ed+SkBr52jQriYjp0kzAWElObk
         eD9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8TjnQQKgVHhmEtCOJSEgSwKB/8H1urVOoHGSn17iMb8=;
        b=Oa69gj/1o/DiicLzoPZ+aqwn3Zui56o+lRMZgRXsDkSaYyiR5pWxSqP+EiR9jnU6sq
         07oJLe9H9Utc7ABrAs0qemOIanJrPVFku5Pl6h24ZUFHyMVO1CbfsvasGwF7m0MedZaa
         c1KZdYQ22pkvcRUWKbYf/v4oZ6OrZJ00HmIy8s75kMNDYJW8DexvoGfIbxVcen668zrL
         z6R33VKlxiD1DqWhgzKXCZcmxI1+/hkkGLjXBf0xwn0ZHHLLSfhPP18fFk/xYg1I2Ctb
         ddADWsW44AGPSolECH5BA/m6w+u1NuAJ8PSGrEohT7g1/8To9p1yuTgMnC19t+jPm1Ej
         S0lA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV/C/X6Bryv9qc7RNICvabPTjUjkzWq9o1fdIdTRRBqsArf46kT
	dJmfOrrCsrD8EYR6yDcYT7c=
X-Google-Smtp-Source: APXvYqwsGDXkzPUyQp2t3LZWBB2diM8XdFlxb9DYgEnIi5KkKhJKaUyJpC5Ok/wzZfHP0ctc4U0GKg==
X-Received: by 2002:a37:4a11:: with SMTP id x17mr3338158qka.379.1581697008416;
        Fri, 14 Feb 2020 08:16:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:c30e:: with SMTP id n14ls1256723qkg.3.gmail; Fri, 14 Feb
 2020 08:16:48 -0800 (PST)
X-Received: by 2002:a05:620a:1586:: with SMTP id d6mr3366463qkk.234.1581697008060;
        Fri, 14 Feb 2020 08:16:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581697008; cv=none;
        d=google.com; s=arc-20160816;
        b=iriFP96epLuECJyxn/wHr1TW/HWAMvCj4oVCbfGjaOK/C1atbX08jJE87ylHeaS9JU
         93IHiOZYl30TFFTdJzn8duTReW1zB+Kz/uzcgq50CRZ9K6lz4QK7MeJ+dQmBd7X3Y4lm
         F9coFnLklqK0khgR+D6edBz1CKPj17zmnuHZGghU4nzJbl5od+zdsO+m7AZltNjNHwHA
         BnjSfdQdzXppvOkhIysHVQXwecneGBGgRqij8o5UehrkKCYlTTc7Tx2kpLR16fxKiUQZ
         pzF0fx7Y0yyvZgW3WnArvxxph1EBWlHNtxH9wg+SexOQ67VsPp8aGR5h+O4KjjMr3R8L
         dBcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=NGfGmySuSIX2SWfzli9ba7pRBAml8Lu2LIC7wwPmtnU=;
        b=mTn8o2yA9mvM5Rs6IImfM76t1SFCvuu2kSNAz77T0BoTLAgJKEPiD7hyTKiFOmbS/y
         idyUDlquFUhPEhnAuLtkqEj01Me/rNmQ/QPNpCoDJEMJkHqsNSpW9f+Qk23nhmP4tMGL
         U6ymUu0q3ZCcYjsq+roaMtqTGBxsOq58pwEbzLHdS7b9kMSiQZ5g4MLtYQO9JzEkVbFU
         Hqh5WUoyZNL8//oa2dE7X+7HfPSlfP40+/3cczqc6x/R75JdyMMoRPuIbRlfcs+HL19U
         oL1U7AfjvPa/S68dAvzW9Chu1Fc2Mx5Max1WU5kc02MruM+CWp7V12se0c9DXFKuYdiv
         wwKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=LsbL24Wm;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c19si342330qtk.5.2020.02.14.08.16.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2020 08:16:48 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 495C524681;
	Fri, 14 Feb 2020 16:16:46 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 238/252] lib/scatterlist.c: adjust indentation in __sg_alloc_table
Date: Fri, 14 Feb 2020 11:11:33 -0500
Message-Id: <20200214161147.15842-238-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214161147.15842-1-sashal@kernel.org>
References: <20200214161147.15842-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=LsbL24Wm;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Nathan Chancellor <natechancellor@gmail.com>

[ Upstream commit 4e456fee215677584cafa7f67298a76917e89c64 ]

Clang warns:

  ../lib/scatterlist.c:314:5: warning: misleading indentation; statement
  is not part of the previous 'if' [-Wmisleading-indentation]
                          return -ENOMEM;
                          ^
  ../lib/scatterlist.c:311:4: note: previous statement is here
                          if (prv)
                          ^
  1 warning generated.

This warning occurs because there is a space before the tab on this
line.  Remove it so that the indentation is consistent with the Linux
kernel coding style and clang no longer warns.

Link: http://lkml.kernel.org/r/20191218033606.11942-1-natechancellor@gmail.com
Link: https://github.com/ClangBuiltLinux/linux/issues/830
Fixes: edce6820a9fd ("scatterlist: prevent invalid free when alloc fails")
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 lib/scatterlist.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/scatterlist.c b/lib/scatterlist.c
index 8c3036c37ba0e..60e7eca2f4bed 100644
--- a/lib/scatterlist.c
+++ b/lib/scatterlist.c
@@ -305,7 +305,7 @@ int __sg_alloc_table(struct sg_table *table, unsigned int nents,
 			if (prv)
 				table->nents = ++table->orig_nents;
 
- 			return -ENOMEM;
+			return -ENOMEM;
 		}
 
 		sg_init_table(sg, alloc_size);
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200214161147.15842-238-sashal%40kernel.org.
