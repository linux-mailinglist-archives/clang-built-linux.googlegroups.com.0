Return-Path: <clang-built-linux+bncBDGIV3UHVAGBB25P4XYQKGQEQ4C27QA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id BB8EE1519FB
	for <lists+clang-built-linux@lfdr.de>; Tue,  4 Feb 2020 12:39:23 +0100 (CET)
Received: by mail-wr1-x43d.google.com with SMTP id s13sf9979274wru.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 04 Feb 2020 03:39:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580816363; cv=pass;
        d=google.com; s=arc-20160816;
        b=joex9G5n0IRU9mKbT6uzmrx9EQ8YFhW9V+3ksrzB15A71MjB63749Hcz/YUa/nIwoS
         J2l6oTuiS1J4gFaFpRQR13+Mcnmb8tn4ar7PcVs5vpKr8uGbDjqDQZsQCvs5YENMzokW
         t/yPElfwTBo4zmd/EsF+/LdDjWR3cDukbuXbpmeFQPnfXJkPxsHQQm7trQQHz9XVVunj
         ODNMmyf5aSroO+aOa76rXcb25Wfld94SlKthUPDMvQK3r0A+QIki7/9437Kxx714Kzb9
         yasgKCjYaSwI4OX3MEneA5Pf2MSGnNGLC6+wi/iV6PGDZ0kJlClFadlyq+J40jQ6dwvX
         LdyQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=6llL92MZjZ4E0QG6AbS/Bxb0n0mtSCmP0FYovv3VgsQ=;
        b=l8GgEcN7TZezriJZwY2ZUVQJQ4ZRsVohO8x5T8Q6JZSsNWwUrDtv2wpi8/FDCwOwFf
         6CQqPPn3nXzKcckEK01FnmNdTPwAQcz5IVnzSJnHzg+R39GAUClLNvT9UfaUU1uTkVCh
         w4CcTUCyD2bFNQQ5zP1VN9BTz28Tai7L39MZZvsXJEDuiZ/Y4RfSyAmGHU3zJMYs24Ug
         LauHWybNnKzbjCVbC11wg9DSSD8WAepAGpNKpHkkJJgw9m4PH3O8TLVd84wc8Q/TYG/h
         4sSxUfso0Fg7jFh4PdqTNrr9gY0SnE4ZvupBXQf3vWthMKm45iAKlZOLWPy0exx37m9w
         DSpQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of bigeasy@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=bigeasy@linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6llL92MZjZ4E0QG6AbS/Bxb0n0mtSCmP0FYovv3VgsQ=;
        b=V41TWhPxh1cu5huGcudtuK0pGWCA2YUIpdao1qVLWy4vt3ek6Wj5wz8upifG9HtniT
         dgwm+prcYvm82wVM58xaxe/FK5kIQnLbBom8K13qbBsJp6qQpuwSWIMzq6F8WbtXKHWn
         JDq9rXrdNmtPwp1aE6dzx9NDO1/R4IvdKGXWidU9mUCrFL28FEK6Fyuyg96CxWVD7W36
         NxK/QgER6X3Ai5RPq/DI5VSQoYjE3TDdQt29AjQt3x07juDOLRY6ZbRxaRi5uXGHU179
         kMiQKxmCj3tftjGk4l7If+x1+spNBjOh0G+qbyPTLAOQ6dIa8mvWXX8/7v8tRlhA6CoD
         i/vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6llL92MZjZ4E0QG6AbS/Bxb0n0mtSCmP0FYovv3VgsQ=;
        b=G6mdd7XEKDF2rIOpQtwZchYU5RciaoUrB4BEkicJLzV+6mMlYWqxQMx3nQaSxKH7gq
         Kx4vfH8IgeuflSiXFlWUkj+ZeQfRYekTziH84S3GQZomgGhpDxL6/2NL/oGOml7EXrqd
         4VrBoRLjpK3vOw+U+yWyUaL3kveRrExGinErXCRkpd0seoA0ky3ACmOw1LxDfkqT3ySn
         5H3OBtEQpmZ7DOhmc6ZZ3TmuHoi7t4sKRSM1tPTlAhZyL5nN+D0rIGlDjESzZA8u4siT
         AlJmxsmgTptxCTRhQpCsn41XZOGSh3bsZ+rWA1S0Rn9YdL9VAa+wyi0SYIV9ECxWWL9R
         nEqw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW4HBr13DRDZfgRe3iapbbE7qnRRl3U3PtrsX1PP+yEiKTtJIwy
	MXgqWp+7z66jrfbyJV9Qwec=
X-Google-Smtp-Source: APXvYqyZzqjCX/biZkE3vqzShbuPDhy2zTrVOMdcLey1egCUTxAWSpR0aDRAU07H5teqnRrCafu1eQ==
X-Received: by 2002:a1c:7205:: with SMTP id n5mr5662199wmc.9.1580816363508;
        Tue, 04 Feb 2020 03:39:23 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:288:: with SMTP id 8ls2543507wmk.3.gmail; Tue, 04
 Feb 2020 03:39:23 -0800 (PST)
X-Received: by 2002:a05:600c:228f:: with SMTP id 15mr5743070wmf.56.1580816363021;
        Tue, 04 Feb 2020 03:39:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580816363; cv=none;
        d=google.com; s=arc-20160816;
        b=SVoKeH9lQjCG/m6UDjjVa0tJ1N9mFVKXGmqAVQXEUoVSW1s+tUIwU+Nlr26hhG/BjT
         jus0uF0BplR//wVlAdgrIqQBxAtPwOliVxWS34FvX5r3OkpUq2fKfa94E3G8AGr2Gr+l
         s0CLLgMIInf5uYB/l9SRP6DDnWRr+Amn2sK0vsWCw4Ss1r+KXhmGQ78qFvRj0KYgCvlE
         QRzv4ib9/JYe0iHI2jP39XcwMA8e6DZBNCH5sOUookGaaWLH1q0pKuq8HsFndSFex5oA
         3J6MLXJCwUTgLEvzsBGjogwRgOBtY/azWRdH+ZicLG/bQy0mh/dplGXz8v2SNhiqrO3R
         mqFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date;
        bh=mj5Ur5aOqS0mI91bvqq/kH2aMexl7qyyFe55qYHjnR0=;
        b=Af361697VVyBwHzhCu5H1T25w7UMgS7kXYoYxYi8FR7HIIkt9meeBWi63AV5KvB9Mu
         0ANk+9w5gqo8NSk9CMPCg4NEiveRDjJyQzA0GK81RsL8QLOPbJsES7rZpEAAntGlqDEs
         +8EbbfQNVW2qGzsFU8eSeJwAB79k/3rlg+D+Ie4ax6r+lbo7QIr3LQBmtoSNuogKPsKb
         J9n6Qw0NrUtDN5wUUfTCHQIRE2g6r9Av3YIfyJ4NePGwNdcmKfe/iVBogBK1n6nAxgdt
         0GqY5mnp088kvth3scZeAOi0+FEYScdEtthY7KzbktAnsHKw6+agGYrTYhQrA0UnU/2t
         Yv0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of bigeasy@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=bigeasy@linutronix.de
Received: from Galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id y185si98195wmd.2.2020.02.04.03.39.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 04 Feb 2020 03:39:23 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of bigeasy@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Received: from bigeasy by Galois.linutronix.de with local (Exim 4.80)
	(envelope-from <bigeasy@linutronix.de>)
	id 1iywY4-0003tK-LY; Tue, 04 Feb 2020 12:39:20 +0100
Date: Tue, 4 Feb 2020 12:39:20 +0100
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: umgwanakikbuti@gmail.com, kbuild@lists.01.org,
	kbuild test robot <lkp@intel.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Thomas Gleixner <tglx@linutronix.de>, kbuild-all@lists.01.org
Subject: Re: [linux-rt-devel:linux-5.4.y-rt 206/261]
 drivers/gpu/drm/i915/display/intel_sprite.c:84:30: warning: unused variable
 'pipe_update_lock'
Message-ID: <20200204113920.tnzqn4nce2qtaqzm@linutronix.de>
References: <202001110924.mDLWOBnu%lkp@intel.com>
 <CAKwvOdnMeLaA2n3yVgP+RPO6dBOQPPUtmo99JhbseDYMekWbOg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAKwvOdnMeLaA2n3yVgP+RPO6dBOQPPUtmo99JhbseDYMekWbOg@mail.gmail.com>
X-Original-Sender: bigeasy@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of bigeasy@linutronix.de designates
 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=bigeasy@linutronix.de
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

On 2020-01-13 09:13:11 [-0800], Nick Desaulniers wrote:
> Hi Mike,
> Below is a report from a 0day bot build w/ Clang. Can you please take
> a look? Apologies if this has already been reported.

this hasn't been reported so far. The problem is that for !RT the
variable isn't touched. I have no idea why the variable itself is an
int, it does not look required. It might have been part of a debugging
API to spot wrong usage for !RT.

So either we trick the compiler into using it and check the type or
remove it=E2=80=A6

Sebastian

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200204113920.tnzqn4nce2qtaqzm%40linutronix.de.
