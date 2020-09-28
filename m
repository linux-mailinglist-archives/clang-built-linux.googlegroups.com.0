Return-Path: <clang-built-linux+bncBAABB6WPZP5QKGQEH6JYT5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 901B827BE6B
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 09:53:31 +0200 (CEST)
Received: by mail-qk1-x737.google.com with SMTP id 125sf2151268qkh.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 00:53:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601366010; cv=pass;
        d=google.com; s=arc-20160816;
        b=DGybX3fDoZ5Mrq/MKxy88gteIYsIL7K9GQZMWrPEbgHnQ0gygVaKetyBT1g9hw/OYi
         J2JbbasB+Z/47oJwseO/AfMrxpgzbptnarwrGSg61xxcal1IKdH70qOQGlPKfqIFUAyW
         cAouGt2cXZL2OkQEMIytFhmbdE0TMfb638lDfG1Vecev7qExdQxepV5cNLxjq7KjTsDw
         xkEZQGc5KHcLJSuORrshL2pa/BF4vqRzXzB8Mku5CNnRHhEGfSY6HdX6NTOmpf7BMcxI
         0tbYW8RCl9CjgFvkmspeBQoqUrhm1y/flksCuly7mUAIAthVEp8wFjO+H2bHPBhxrv0Z
         Q1+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=jmdD+APijIIReT6xEO2bcieFslH4fdae0mZqYSQGNM4=;
        b=nrIxRA9j4W3oiQ5FJUQn59aFA7HnwIdWhEs3k8c6o895YpLt3Y1J0AAcV3oPm9L1kv
         fv/N7EfWbAUuAl8q5NSm9bW0q0vLtHjrfPPhFKw5jSFnl1aQO30Y8iBn2EuyrurHta7H
         9YcJ13A4zowFGG7bx057BKxyYa/kagtVXn4BKI20T/hg2oqvzRgM718dO5Ezamy24Xkx
         PiTG3aE8G70m7SQROpjQP57A9LRjOuq8R0FqGAj2AF4IuuVIGi6EjRSUdGtIFE6ffNf2
         s+8FQPNzsqZrJnP0TnrzgkNcHH56xSbpPWuPP/Wx8k3WNUc5OmASWMvV/R2yJtBA09jM
         ZDFQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=elzncUXu;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jmdD+APijIIReT6xEO2bcieFslH4fdae0mZqYSQGNM4=;
        b=QclsxDW5JYtKv8G7pjLjoICDvFGdQwW+t+h8aBleXAliRAF+0BgzzanBbyIR2cfSIu
         h0LEsB3Pqqu7/AmUtN74iCCjOzyRwaRlh4eevpLO2wYouFqidbnkpIe8AM2P2SXFloy6
         i2nd/xUhVchKJqA34iNb07MdAgfSD2nYTQaxpinOrWWUNqEwQE73ap0asIBNR0KQli+R
         QWpcOBqZPWaRijMcE4jCOtAD4wBCdBlzf7cSE/5tHbkr1eIGU13nL9DlMHIPt0hE/oxm
         FgJCS2Mdu87e+2P0hSZZ8QsWEm72ta9T7yTmh/zy4/UvXw0SO8zf1e4rJQou4AUiRCON
         NGfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jmdD+APijIIReT6xEO2bcieFslH4fdae0mZqYSQGNM4=;
        b=Y53ykEqroLKMzJADiXou0XX/jBZI+TcqISCB+54VijThtCaUA3RATXyU87ygGvhnaU
         pJjae3SI2+OeZvDMeEJIyKcawBqFqxqHpBeLWQ8Y5PM/UU/mv4+Yqx822qbFGq3n/u3W
         Ex27VnxLe960a7wmQxnKDU/q5D4NdpGL2aORG7wtRau/nDK4TFtoTLdVGHMyAiAxXx2N
         MraL46ELqeJRtnw3Yhw/c2h+p2ZBEf5g8J8HoOgOwKW+5TiW2L/Pf63JG0q2Vtxo5yOU
         B5mILbx4op5HfwPY+FhP6Hx/j+fAIHT4qvBrH2ZLvrELIdH3eLYfv71TICshmsIDZeUf
         HoVQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531rqX2YJn0/8+jJCA+dZEN9dUYD3fYji+0BzYHxQQsfZf3KblH3
	WZyXfukT7oyF8mjEdr373FA=
X-Google-Smtp-Source: ABdhPJwTpcA3eyqKlyK67j8W+vlRsU/fS8yTvFTMzgGshhPlwA1q/fN33U6lfkbN3Hkp7u2au3iYEA==
X-Received: by 2002:aed:3aa1:: with SMTP id o30mr2023195qte.152.1601366010337;
        Tue, 29 Sep 2020 00:53:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:e881:: with SMTP id a123ls2440916qkg.7.gmail; Tue, 29
 Sep 2020 00:53:30 -0700 (PDT)
X-Received: by 2002:a37:9f54:: with SMTP id i81mr3206308qke.497.1601366010036;
        Tue, 29 Sep 2020 00:53:30 -0700 (PDT)
Received: by 2002:a05:620a:40c6:b029:f9:71db:3eb4 with SMTP id g6-20020a05620a40c6b02900f971db3eb4msqko;
        Mon, 28 Sep 2020 01:38:22 -0700 (PDT)
X-Received: by 2002:a05:600c:221a:: with SMTP id z26mr441812wml.131.1601282301643;
        Mon, 28 Sep 2020 01:38:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601282301; cv=none;
        d=google.com; s=arc-20160816;
        b=wXo2E6pXgA9JUQFoRpzuimqNBuQYVGjKaA2Z7uWBnfnTqgepHZUz544yj9U05T0SYA
         eRgy6unP/JItEzLqaiXvGeRauFrHrotBaXjf5PHKe8Kloy2dSjHGc/rJ4PG+xLVsndeu
         6nY04I0RWgKQKJmHg5GTPIqxDTsFykQwjSckwtizHiRgdh7UC4tWnhPblCcXKjGjmmDe
         D7mLPz5IC4AKynEQOKXqhWuC9rEwso9W3v+UNKYuCDvxvEMX3TJ1lY/YX3IlNZYR9OvI
         fpmVXD8W3+JhUtK7lUjsQ2aOdo6vrW77rkXMoHFkQNld/kIt2XT24CFXr+z6lYTdGs5v
         8yPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=lfG0lfD82yy4p/0tbie5GchL7TDPEnApnyEmhZtA+0Y=;
        b=By2lfTtmKq6LbtcqmED07RZ/h9cbcjswkTgK1egZEKOIdupMI/w134xNOw7YIEADt3
         3AVKh4b4r5TYoL4eW6NeW+r0lcEJjHdEnuhy7qu8Y8isiBC1rZLLLpTphcdsTZwJuRU0
         VOojYM0R1Yb5+1IoWNULo/Vq2A0hYc8sAQHnRpTYZZRI9S1uyft7E44hmp1ChDzse+Jm
         BRBXRwg15lAOPz9GATID0uXBlvnePuCmOr+fiQNNyO152GQpiI+TGbGoBvbIHfu+VTDc
         p3vQtZhZhG3pjXdm+U/PV6eVoEgsiE+4ytrdJJooNWP6aUUm+wu65/pFoYZsFrc9I6Bq
         IJ2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=elzncUXu;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [2a01:4f8:190:11c2::b:1457])
        by gmr-mx.google.com with ESMTPS id w10si14846wma.1.2020.09.28.01.38.21
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 28 Sep 2020 01:38:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) client-ip=2a01:4f8:190:11c2::b:1457;
Received: from zn.tnic (p200300ec2f072200afd3fa405d8d6d26.dip0.t-ipconnect.de [IPv6:2003:ec:2f07:2200:afd3:fa40:5d8d:6d26])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 26C7D1EC0179;
	Mon, 28 Sep 2020 10:38:21 +0200 (CEST)
Date: Mon, 28 Sep 2020 10:38:19 +0200
From: Borislav Petkov <bp@alien8.de>
To: Dmitry Vyukov <dvyukov@google.com>
Cc: Alexander Potapenko <glider@google.com>, Marco Elver <elver@google.com>,
	syzbot <syzbot+ce179bc99e64377c24bc@syzkaller.appspotmail.com>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	"H. Peter Anvin" <hpa@zytor.com>, Jiri Olsa <jolsa@redhat.com>,
	LKML <linux-kernel@vger.kernel.org>,
	Mark Rutland <mark.rutland@arm.com>, Ingo Molnar <mingo@redhat.com>,
	Namhyung Kim <namhyung@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	the arch/x86 maintainers <x86@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: general protection fault in perf_misc_flags
Message-ID: <20200928083819.GD1685@zn.tnic>
References: <00000000000052569205afa67426@google.com>
 <20200927145737.GA4746@zn.tnic>
 <CACT4Y+Zxt3-Dj6r53mEkwv24PazPzTxQ7usV1O+RB0bk2FzO8g@mail.gmail.com>
 <CACT4Y+ZZH76qg810RzGp6FDLTxJWVqZgkrXSxqgq7AjpPYG9XQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CACT4Y+ZZH76qg810RzGp6FDLTxJWVqZgkrXSxqgq7AjpPYG9XQ@mail.gmail.com>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=elzncUXu;       spf=pass
 (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as
 permitted sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=alien8.de
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

On Mon, Sep 28, 2020 at 08:06:19AM +0200, Dmitry Vyukov wrote:
> Maybe it's just a random silent memory corruption in the end?...

Oh, the rabbit hole goes deeper. But if it is corruption, what is the
common element in all those? All those guests have run on the same
physical machine?

If so, you probably won't get any logs from it to search for MCEs or
so...? Maybe the GCE people can do some grepping :)

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200928083819.GD1685%40zn.tnic.
