Return-Path: <clang-built-linux+bncBC225DNQ34LBBPULRD6QKGQERXX5IWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 7697C2A5C03
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Nov 2020 02:37:02 +0100 (CET)
Received: by mail-wr1-x439.google.com with SMTP id x16sf8495591wrg.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Nov 2020 17:37:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604453822; cv=pass;
        d=google.com; s=arc-20160816;
        b=GdhUABcVG+Bm5rIDRZgORi8jshVAS5JUKQKkP+GfmcU0NrSOstvifJ7kyRr+0/9hyN
         yOKKmZ28cQ/t0+7daez5Iz0JCpc1grjFzrXEh0eat9Lp9k+0y213rqRhM8ZfQUJ1IpBH
         u/gqOdb0wTV39Vns3wWaopDUAazyYOHt5TGz85UCDNOVDqxwdlRAN/K+LnCgKGwwIfcz
         LMRiUgcU4AmZGl1iHmyso2qlwDIrm+JxD31FVz/JMOnK38XSoDm6HQbGa9IFXz5kuvr3
         PPgsJkbz3epq4nsQsQLHv1PR8BaUSn/n+C8suAj+bnlvjeOJvx6MOj8H9ScwawhG7SvI
         kgfw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=wBuXXKzZSDey5aiyYH/NJyOMiHyoEguBSowJH+AdDLU=;
        b=K5KD/s+1QmLgrfpuUgfx3smmQVs7RxAeAYiykYQSiPXoWet8bK6r/KorI17Tbr8DGn
         LmKVYYKu5odHMM8v5rej+3hDk7QyYprpD/RjZ7+4jKdsWUueikKplNHy+aiD0BvJez1W
         erZi/S/h4/BlUOrT/FgsySUjZ8MmaY9NRQRcD4KVixF7vnspSadrRyyDnAbIGTdCFdHZ
         2vE5Q+qCNw2zMpi1dc9t/A5yOOgSvdzcHuK3FI8z5I9nucAKzEKKOOlMPOaWItr5DejA
         /Kin4ifM/AWTPKHEEjmzbFaBkzS+3Cgex0ezQunAnbLK3afLzzn21FgdgXJJmFSrZ+Pv
         jvfg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kapsi.fi header.s=20161220 header.b=BFHBR1z3;
       spf=pass (google.com: domain of jjs@kapsi.fi designates 2001:67c:1be8::25 as permitted sender) smtp.mailfrom=jjs@kapsi.fi
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wBuXXKzZSDey5aiyYH/NJyOMiHyoEguBSowJH+AdDLU=;
        b=jIh/WvgqiEHQyVpBlZk0AJAlQVSKrz0NNr3Riv+1iFM9DX8ZInUQmtQ2iBt43MueNQ
         nGzfzhp/8BYqQiw6+IadacC3dMkSyfPZs1HursST3YCwKwcBtCRPT95Gi+EHBPhBG/QT
         0gdFcfeC19FiZLwovbjhCJIZrXVnr8mx868G/SGwrdg7eZWM2le8N7QvRhxbe6JZVQPi
         N7CISWog2wN56Hhtt0HY++op4ifUOt5+ZO2yeX3dyfIkH9yPeaK6btWbGEHydjtIxymO
         bjscOw7HJq9sckTs1Avf08M/ozTbgWY6G6KCf0e+7f4IeLB0bYvgif4ci7BGDkuHqz29
         N+Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wBuXXKzZSDey5aiyYH/NJyOMiHyoEguBSowJH+AdDLU=;
        b=HiICf50o9VHCSihqR6BwJKrTFeFdf4dTmzB1JaoNm+tYtCm4ahs/kM0ZG5pO2O3b9E
         SHsywpBbWuuWPYKH4X30WDs3FZGHdPFLBMjowXzzTF9VhCXTKbhyqKdmEEEExT5xpqrT
         zZx9molgMmQpQIJOq621G59JvJyb3j9Dvflvgc4MqxYQhnGU6Tff7U9zqrUWWwPV6Yri
         TjhXxzCxdyTleaRFTpHnW4q57uSMiDVrL2TI1KjcCzMqXQa2EVdxNkC/mNYxpnvlug0t
         HWjk6QNef60ywNueW67sqy7eySELH2zRisTFoFa0jYU9H/W2/od6dp66Rj+4L0pjsBrz
         sdvQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533u06v4FAKIn0TCoGa4nGSSyaKXv8qZwN83YxN6wiOpROh73XJp
	zM/fCmVEC9aOBRV1MW4kOoY=
X-Google-Smtp-Source: ABdhPJybVftrCeMDQLs+g83b3Bf0KNKaenzcJauIfIms7ahHp5dlI8B0WJ9cFzB1BdVTF8a+qvkrmQ==
X-Received: by 2002:a1c:4302:: with SMTP id q2mr1986556wma.182.1604453822208;
        Tue, 03 Nov 2020 17:37:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:f00f:: with SMTP id j15ls600449wro.2.gmail; Tue, 03 Nov
 2020 17:37:01 -0800 (PST)
X-Received: by 2002:a5d:5703:: with SMTP id a3mr29919329wrv.67.1604453821408;
        Tue, 03 Nov 2020 17:37:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604453821; cv=none;
        d=google.com; s=arc-20160816;
        b=a4gKChNMJo7X4YBBXQYiVk4ClgMG/VM3X1kpnH6vi3gkOcR9nW2IoEQFM8XygsOVVa
         tGNN37Sc2eWTzMPr54ZOCaMdpFOfs3VOuWDe9Fk+Drzba9LW3+p96IkM0EHqo1oI7v4b
         vVfklKjCMF8H/5k9AoEE7fQeJBHmF/38CByMvzJcj+owtldnjCYMrLTdXjeJUSN3qD1s
         7epAV4wIzjOkK1xGKhK3d5LsqL+SjA/XBSlpPqcFOVzwue3KZDbnRtFgl59fqspk7qhe
         KJEG6dZDW3XjvI7CfbTd964KfsmScCjUaH0emYXhMQpsXM17HTHune9G5WWDvTZN7Lcd
         E1Gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=7GsqZwUgVQA/3Vyt9cB1qKmbwdd4Y/il+cY0XAsw4fY=;
        b=LSvmpxchpaqp+ZKHGH7YRYQno2rlSJfJxxHPNEZKeZ22714bUO7D+bIifF9Lg0SwsP
         ubdkTNwUCAh8IWSyUV11OoSnZzfxWaqY8AmQ3AfIA1QA0TIokge6RlFTtLCSuKawXAUn
         5eIsoWsJHipZ8JjckLWIhe6xCDgJaObkEB8qBvdvx8V9B6DmC4cqFlZ0m4fNvhR/3IVP
         N9FnT9B6f1i8V2w4XTGizBDZtH+wtjbkY1ZKkpO8KwSODP+E7SrX+aXMXKlx12ThFLW2
         hP6uk0aW54sophYwJt3G1GWukC4AFZL+DTzOayRn8i+Eiat/kQ18T789Q+nLi1vX7/L+
         AQug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kapsi.fi header.s=20161220 header.b=BFHBR1z3;
       spf=pass (google.com: domain of jjs@kapsi.fi designates 2001:67c:1be8::25 as permitted sender) smtp.mailfrom=jjs@kapsi.fi
Received: from mail.kapsi.fi (mail.kapsi.fi. [2001:67c:1be8::25])
        by gmr-mx.google.com with ESMTPS id p4si233752wmc.4.2020.11.03.17.37.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 03 Nov 2020 17:37:01 -0800 (PST)
Received-SPF: pass (google.com: domain of jjs@kapsi.fi designates 2001:67c:1be8::25 as permitted sender) client-ip=2001:67c:1be8::25;
Received: from 83-245-197-237.elisa-laajakaista.fi ([83.245.197.237] helo=kapsi.fi)
	by mail.kapsi.fi with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.89)
	(envelope-from <jarkko.sakkinen@iki.fi>)
	id 1ka7jN-0006rV-JA; Wed, 04 Nov 2020 03:36:57 +0200
Date: Wed, 4 Nov 2020 03:36:56 +0200
From: Jarkko Sakkinen <jarkko.sakkinen@iki.fi>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Jarkko Sakkinen <jarkko@kernel.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Kees Cook <keescook@chromium.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Sedat Dilek <sedat.dilek@gmail.com>, Marco Elver <elver@google.com>,
	Andrey Konovalov <andreyknvl@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Alexei Starovoitov <ast@kernel.org>, Will Deacon <will@kernel.org>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 1/7] compiler-clang: add build check for clang 10.0.1
Message-ID: <20201104013656.GB21728@kapsi.fi>
References: <20200902225911.209899-1-ndesaulniers@google.com>
 <20200902225911.209899-2-ndesaulniers@google.com>
 <20201103045521.GA58906@kernel.org>
 <CAKwvOdk-bMx3Jt6=oN=PHqRv_tx5cF=9cVmumazb4vMNHdj5Ag@mail.gmail.com>
 <20201104003826.GB19460@kernel.org>
 <CAKwvOdnZSLP_YF3iFDLTHFE=ORxsrCR06s-B2Hk7khSxdC0+5A@mail.gmail.com>
 <20201104013447.GA21728@kapsi.fi>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201104013447.GA21728@kapsi.fi>
X-SA-Exim-Connect-IP: 83.245.197.237
X-SA-Exim-Mail-From: jarkko.sakkinen@iki.fi
X-SA-Exim-Scanned: No (on mail.kapsi.fi); SAEximRunCond expanded to false
X-Original-Sender: jarkko.sakkinen@iki.fi
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kapsi.fi header.s=20161220 header.b=BFHBR1z3;       spf=pass
 (google.com: domain of jjs@kapsi.fi designates 2001:67c:1be8::25 as permitted
 sender) smtp.mailfrom=jjs@kapsi.fi
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

On Wed, Nov 04, 2020 at 03:34:49AM +0200, Jarkko Sakkinen wrote:
> Shouldn't "#ifndef" be before the whole version check? Otherwise,
> LGTM. Please CC me once there is a properly formed patch to try out.

(to my kernel org address).

/Jarkko

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201104013656.GB21728%40kapsi.fi.
