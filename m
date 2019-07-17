Return-Path: <clang-built-linux+bncBAABBTO3XTUQKGQEJQHOIFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A2716BE0E
	for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jul 2019 16:16:46 +0200 (CEST)
Received: by mail-lf1-x13b.google.com with SMTP id l7sf2285047lfc.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jul 2019 07:16:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563373005; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZlgeQapb/dmhalce5r4GVAfX7JG4U7zvIl5Mxw88SJFPntTvGj2OPdZWYBYzENKuim
         xUHDOLh234UUNlZYqNbLgzHfj5vUnBJteTDA4ifTTXgAgdeUWFCbPa+mDSfC9zYHjIWX
         rX/gbMXNb4dZMw/LaNCyQAOfHe8GVAgyJEDCAkeIojE9X/g5LTWCbrVRw/I5TT9y7N5O
         uj6TdI+P1Y3VXqDK6teqpKPmf6JXCvWbFBaXBJMdTfOrvKV8fQ4WuLlM3FmYgeYZzC4G
         akVNbJ3VfQWn1pRrKXluHofogWGyupYCFK4lkDa6RqH18RfRX/xN7Kwb8owowjOJjDin
         ba4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:organization:from
         :references:to:subject:sender:dkim-signature;
        bh=InEVV/wifnxm8rTfXEMNeeAKmq5j8jvFuFM9soSss/Y=;
        b=bksqSJdwWP032f81beW6Fb9wZ7Ujg2d5gjrRHU0pVCaDddwm8yQY1qO/fbjPyyzKe7
         xYJ3UKNiAFzsY2oaPsbT5g0k4+psXIphCm6i3xphTL1A2j6mwsU05dpU2aSMEtbDVD8g
         uycTsQzuJDvcPQrE+3Z+OKlUHX6/Ojtb1f6a/DG3XS5CPgwGgSoVnfwx32Oc/yFgGXjK
         6yNEHE2TDad9dU/jq5q6UnWdTe2JycMSH0JqHnYf5sBWv7ZsTRjsnJc745kTXWFgXvag
         jlTej8QkKViOeBbiYFqZhT6SGv1OH/MPSlJ9QkacpqhgQqb49aC0BnVH/6yyjjVHCWxd
         oRcA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of lkml@metux.net) smtp.mailfrom=lkml@metux.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=InEVV/wifnxm8rTfXEMNeeAKmq5j8jvFuFM9soSss/Y=;
        b=aRB0cHXdOUaeIEeAa6FYvbNqsIICwc0m8kZU3rA2oONqao4YAefsSFrGJRjlZ4L3GV
         +KWZBu5J9LMPaUmh9Jez5AJlniTqzrzAXA5OhNrroofrkMh/Jgj8dhCp0H9R5XzyrdOk
         fN8imYo893rAdkCphzNd6PjgTjQJmkmNpp/bNBMHCm5PoBg3/m0Ot7maapWkOiuQ+5DO
         yoaBluK6i0Vcy0kWxcHPRwLIp4AtTam9rvPxNQTkFRfWo96EknUOihanoYq5RlqTH65i
         BgqlNUEx/wr+TE5IlMrSi8bYBtZtDi4M0IAtKIP7Yv19mZ6/SFiWNsdqMe7QqaylcQGO
         TI2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=InEVV/wifnxm8rTfXEMNeeAKmq5j8jvFuFM9soSss/Y=;
        b=VO8R77I5bs/evVAZ9IdVKWvQmUXqfaS+J4oeCIsa1bD6FGnNDr6iIX+fTbAeqGb0bF
         3ZU0qSbBTJfr2WfEGsiSoHRLEodSJKkeGLThj3CDiQBrNPX9uCMjUCEGylVgmSnje+fN
         DoyvqQ62AVpWfilYimVdrJ/TzDchrKopu12S+TvkOkXkAp9b6SSaBMxZSAtuzKpdHg9h
         R49py2kpFczYUY2PolEulgFGwwTelcFdf1H20x1iYX0cCQljE/ubjd6dVkUV1hNUuC3v
         3cX0OZtVBe4xwZnTrVqlYriyrdreI9hfKBgFj90HRNJQp4FAhpkWADE1nvMbWcik8t/R
         zMhw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXpCNNDpk16DcpHlM66rhsoeplC49u4BweUPmQ2F5wcZT0Mm7TP
	/k0dlKZ6MXE21f+oiM6+ViI=
X-Google-Smtp-Source: APXvYqxoQiZB4QkDubHE3pMh/QEaQL/aDb1EVSUwsnaoIjUY+vFq9gq96+Igz9wo4R0CtCPKpSjUvA==
X-Received: by 2002:a2e:730d:: with SMTP id o13mr3984846ljc.81.1563373005666;
        Wed, 17 Jul 2019 07:16:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:c317:: with SMTP id t23ls1060601lff.16.gmail; Wed, 17
 Jul 2019 07:16:45 -0700 (PDT)
X-Received: by 2002:ac2:495e:: with SMTP id o30mr18012054lfi.140.1563373005243;
        Wed, 17 Jul 2019 07:16:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563373005; cv=none;
        d=google.com; s=arc-20160816;
        b=wRc+aMNNeE+RMUAFfpaaGLaxo9AGEcOa/5RgwQg9n915lN7X5e4DOvrYVRRPf3jBH8
         VZmTrvzH8NKjo01bdg7b0aXGVW2ShBJ6oYwl9nAk0ngTILXs3ObJYPK8Yd3yTJcv6CsR
         SCHXjZxMr+tupiFdtmvGamPffpeat7UGXRkY8mw11bNfStCMPe7SBRlOYuFH7Sw21mTe
         LmwKHrj/fmUMGnEo2aBmOr2NOEIsb9jT7/KZc6Kn+F/Fmf+dm41th7h1ledVIjRNXiDM
         FoMJfov0ctrH9dVJaiAZY1S0RQl1ZHuPa3zDLekA1CwLEwISKSnfLs4aO6ge7yEtn0JT
         mLpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:from:references:to:subject;
        bh=4kaGIIurprZchGxKw6tuqlNWh47cJqmITkSCLVoxfYA=;
        b=B9ai6RZrDmYxps/7fWmYPs4fHsb0lha+Ez9Ipiff5LYy6CICe4xlpaXONoCRgyMx0R
         YUou7AYwC//tFAdczKdkJMcKriB2SmeGcqMJWAehU3NIXLHK4gei7vufcj4KF+Zbb8Lw
         /x+Gq7ZCsF8eZbVIXRmAs4uf03120VsEecHJEoDekM4GNracffZ3uz4IkwnQPuS1E4Tn
         k0iWq1RPwsT0mc7Ekseoj9I2WVJL2nNWWKKgVNgba9LbVJS3urV2W/vH1VP6YVy15GNo
         Rag81rFW06NyLcR19UdbwJfSTikSMKSYL+7KcqldgJ6y0GjbHiG5ypewISoJNG79Rs53
         PJvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of lkml@metux.net) smtp.mailfrom=lkml@metux.net
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.131])
        by gmr-mx.google.com with ESMTPS id q11si1266020ljg.2.2019.07.17.07.16.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jul 2019 07:16:45 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of lkml@metux.net) client-ip=212.227.126.131;
Received: from [192.168.1.110] ([77.7.13.186]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MkHEH-1iBlku1J9t-00kfCy; Wed, 17 Jul 2019 16:16:41 +0200
Subject: Re: [PATCH 4/4] debian: add generic rule file
To: "Theodore Y. Ts'o" <tytso@mit.edu>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 "Enrico Weigelt, metux IT consult" <info@metux.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Michal Marek <michal.lkml@markovi.net>, Robo Bot <apw@canonical.com>,
 Joe Perches <joe@perches.com>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
 linux-riscv@lists.infradead.org,
 clang-built-linux <clang-built-linux@googlegroups.com>
References: <1562664759-16009-1-git-send-email-info@metux.net>
 <1562664759-16009-4-git-send-email-info@metux.net>
 <CAK7LNAR1N-bwVWm0LXky2-d2GfvRuRrEWeo5CGm3Z2Lp_s0WEw@mail.gmail.com>
 <5af9db32-2cf5-10ba-261c-e08852d0814f@metux.net>
 <20190715191245.GD3068@mit.edu>
 <CAK7LNASps6JBAvtJshjMbqMk8QaSrMaH8pm-wHsEySTRJzu0Kw@mail.gmail.com>
 <20190716123431.GB2999@mit.edu>
From: "Enrico Weigelt, metux IT consult" <lkml@metux.net>
Organization: metux IT consult
Message-ID: <77f82ca2-f89b-e8e2-507a-c37bce1343a5@metux.net>
Date: Wed, 17 Jul 2019 16:16:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686 on x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190716123431.GB2999@mit.edu>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Provags-ID: V03:K1:8HnEQhX5qC0lbl/5iJtYcFfeJ0Kw333zWG878y65QFvMazOMKER
 WHM/m1Ezx3M1tX80++6gg/P7sJ7xS69gwKfMLSzdNgGCYvFya0T3VZQCHM0U1inFUEri+a8
 GiOVyeW37SZ681d9hkRJZMu5QQNf3BowK45qR2u42VZ9o2aJuzXyxDzcKeLaHoj211cD2MN
 KLPjrLUbq3j+8tC7yAiSg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:iqJCQL2Ve+M=:eLA7MM/kzThA5XWvEsiQfx
 FqCpQSrv85qNdT1iaOWhC8bCBMiQV1vf6FOlR+R/KY9pj2ve5MZZ128EYsKNlSlpo4283aJpJ
 Iu00EI+e7IC9m7PqrJ7cGHqpM1KGM1J0ZY3ouApUNbuF9ILgTxJIzQwV5c4hKCNCUNaxikERj
 7HeT0CEW5VyzpzS1S0Scg4ELM8yVakZ5wHqzQHQ+6OT8UVR12sPfySw+WVum8Jax5mvx6cqx6
 igNAtoAVdttDEuX4Am5DZp2/hIL4y5SYKp2ZWj8OtjqYaZ7DbjV9rHYbSJQwdddqkCDy6FiJ6
 DTms95X+fwEa0o1nfxKExtIyQgghHOkGFoHfhLJZGiMLOoGN8Y6E1r2RQSJyLS5zPTrtDp+Rv
 GXZlicSwpoZXzWYH4ROm0XC7uqVMk5QHStfGDpNYuYCIWl3E0+fbcseAhcdzJh9jbmIyhnwhg
 5gPNg3WAxaXTW/trnRdCBG0MB01BJC+Z/lhBymKXyGX3BqLQbRfCmDH8ZXMluG/Bp2twCYo5M
 Ck27fR1WA5kNyM6BbMt6PG1+w14CTgPapAbmo8dpSfux7kh5JhgcInF2cjDJERPW009OgxiAC
 HzljwX2k+bxfyzUkE7RO97wjJQdua0RlMJMQ9mp0tHkvL9N4PkwyOtfibYge2Orb4bkaZ5SLt
 AKjqjN/xTd3cgVGyuHWI1nzbvYs/7zO6HmJuqVaAqof3ug9dTR7DF9ZWJ+DXxBrBKWsnJT77D
 9te7Li0DfCy067+cxIpEtAUS11vbfdPe0wz2XBP9M4lZhoQBwxDrmg5hGAc=
X-Original-Sender: lkml@metux.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.126.131 is neither permitted nor denied by best guess
 record for domain of lkml@metux.net) smtp.mailfrom=lkml@metux.net
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

On 16.07.19 14:34, Theodore Y. Ts'o wrote:

Hi,

> In practice, that's not going to be a problem for most distributions.
> The traditional way Debian-derived systems have done builds is
> completely outside of git.  So there will be a linux_5.2.orig.tar.gz
> and a linux_5.2-1.debian.tar.xz.  dpkg_source -x will first unpackage
> the orig.tar.gz, and then the debian.tar.xz, and if the second
> overwrites the first, it's no big deal.

ACK. IIRC they already filter out debian/ directories when generating
upstream tarballs - other upstreams already provide their debian/
stuff, too.

> First, once it's checked in, I expect changes to the default
> debian/rules file will be relatively rare.  

ACK. I currently don't see much reasons for future changes. If anybody
sees something missing, just let me know, and I'll take it up for the
next review round.

--mtx

-- 
Enrico Weigelt, metux IT consult
Free software and Linux embedded engineering
info@metux.net -- +49-151-27565287

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/77f82ca2-f89b-e8e2-507a-c37bce1343a5%40metux.net.
