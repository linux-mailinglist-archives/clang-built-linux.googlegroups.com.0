Return-Path: <clang-built-linux+bncBDIZTUWNWICRBCWVV6AAMGQE7NL73IY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id C5A8330141E
	for <lists+clang-built-linux@lfdr.de>; Sat, 23 Jan 2021 10:21:15 +0100 (CET)
Received: by mail-ot1-x33a.google.com with SMTP id t5sf74197otm.18
        for <lists+clang-built-linux@lfdr.de>; Sat, 23 Jan 2021 01:21:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611393674; cv=pass;
        d=google.com; s=arc-20160816;
        b=jkL3HDmCPWotUX1zEKdsSdKR+1hKity1Q7RunjyTnB58j0yqb237km/cM2l2BO5aK3
         HwcI6veCdHdwcWhgGMB9QyHphxcTz3KREXvXMnkC4xYuCVi30azkZuT8uU1e5xlUw/Vj
         lH6NDTh5P8BYIYaqzxLsnHR/p/PXaXV0NkjHch9N5T+3pi4VY4zMc40EvUlQP1rNXIwG
         ht3WLFU/1chEwV5QXB1yumfyXo7WF5WvIjBeEZu8PSKLlXwpvjfJ5w3vriWutTWjRw28
         RPmTUvXA+eofsQCvyvwAUPteHR43bdOl18J+f+3sqGU59m5s3syi1+fn/Kf0NLjG7pBr
         AfpQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=9qS43AAa3o5ElpqLt8N6VuhBPf2r5bScaQ7QAn3Lc1I=;
        b=lAaYfElTmYzxcLqc4ifZ8eVNTJNUvve0PV+LzHbIgmry5yFHnHufLqGTvguakis7Ab
         QXEcrSB3YsM8cUgVt2H56v6pyCQbOe3wvj6uLGlwvIT4hN8cznRZpkfIWBSj8bC0rCJH
         v849iBNYo7It+Lwy0uQbgSMkK8RaW30g6YGlKGVg5z1+fexXpKXWpoBirF0Ktj7Skn9Z
         zoWrgk8kxfnUecxuzUY7JmEnZW8eU0fevTuxd/a4kuVDew4wMbCaWCM8oZEBl2AGLSxb
         ZznaN2gJzuj+m9YOWHwuVEh4Nt3d4B4ZaAk6wCj6/ze0PPp1qAjaDNiBESUdktQNWTw1
         htNQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=IuTJuHM4;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.79 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9qS43AAa3o5ElpqLt8N6VuhBPf2r5bScaQ7QAn3Lc1I=;
        b=CbMtTZl/vx6UrPPyZ8pFqIYssS5Iu8i8oJOLZ3i2O9LF4SE/DvybFyD4Sqo9XCI6r7
         DdCLTCeiqNX4pbfFUNHUSIFqvT2mMs2dP6mX5IIbWZh0rWvWB1txstlDexLg5wk91elC
         lYwk/bm905FpH0GzWw0s8nRtUJNVgmF+FX3nqfyD53cULUdaqh4bF8ApxixytCo0wNI/
         51aQOq1h+2Vb21F4pfGGmFb5JW8LQgI9wysKjXfjq4bv+aKU9fTFlGOHgf6BnqX1szqz
         ZtaA/GsENtf6OiFzYKVcyvdADXGE7QQkbIxmqge17sDDDFbPGzl02C1+L3Of2cr126M4
         1Yaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9qS43AAa3o5ElpqLt8N6VuhBPf2r5bScaQ7QAn3Lc1I=;
        b=BYduw/xLHbCTudhEmrquac6vJa3d5oi5dR6NJjUnYhFI5IVyILV6oedASlLegyUrbh
         ZKx0QHCvOssg0kUJnJEtmoijyOjAnOkJP7DVfsUygJ16rWPoIhu9l0lOENU/UEJIwm6R
         uwBBLZ4obWcTUY8yY7ixIyoUE6w3LOl8Zq6gLb4C02xMj+DulVC6GAyKd3Q+OOAlFYL0
         FTL1gPnvCmDcj1qtOZyItgAKnWKpet7KjARaE3CnmvB6Mgzy0goYCK8elP7mOJ2Wtdvs
         plDedPSQu5yrJ1HknxuSUBIxNXU7/kOXiPUP51AoFP5RCO/aD3ivJzt8uwEkp6GE4siY
         hbqw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532AmgQ6RVx6s5LkahZofPuCUB5W1DKGTBbOixqcNzaoJmAWVJy1
	wCV2XG5rqP1LZ5/Vl2PYYkA=
X-Google-Smtp-Source: ABdhPJwWJLbEdwS91kDGT1F/oEf7joPz2nRumBK9xHiPhJ7gw3lwdm7atbJcbwpNxNkiHVAxG4s+jg==
X-Received: by 2002:aca:5047:: with SMTP id e68mr5869373oib.76.1611393674407;
        Sat, 23 Jan 2021 01:21:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:923:: with SMTP id v35ls1467399ott.0.gmail; Sat, 23
 Jan 2021 01:21:14 -0800 (PST)
X-Received: by 2002:a9d:eaa:: with SMTP id 39mr5994532otj.51.1611393673995;
        Sat, 23 Jan 2021 01:21:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611393673; cv=none;
        d=google.com; s=arc-20160816;
        b=dmtRC+rg2igdZtWAZr95JCzKX1/+32syFvzBRl6cJA+f14ylcrWoYma6vjST1BVwR0
         ltJNlwmAShusgQBiK+eLqvIzpHpB7r6/9aklYcOThOnvJo1DITixi0y3vUnB+6Bv5HeH
         qAdD9PVoNmidm8v6nQ4+Sag813b1F7Eo83n7HQgsKnWa2+3GvRuahniLXQf2gTMR6u0t
         zY6b6k7N5BNjXM/oZWk1m5h2udjOJvJ1rIkZ6KOh2X7r2bZoc/rqqiok6FntP1UOP14S
         GhN33CTjAEbUsL9ZiSqFNYVB54kR1a6BRMpzKpUk09/JUUkQTTewmxw1XWPQskTpJS7B
         pGxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Dteca2DTJ/B6Y4PJ3HpK/3HkLckJdMVpe5yJfeyUSXQ=;
        b=BCsL1lVw8HI+cM7I/f5R1Jn3Ro6FmEFYrEZiv5vWZQ3fVle5fCoDCUVbKFI8ylvjvS
         WInf65hQNBWMS4Ce4Z9P647MEc7knpXkM5xoTc4p0BU3Gf0Ey7BJ9yHXjAErSoihh6jR
         F7/yTpK2/E95QTpGQ9IX+y1VCz7YHSws3N+kSs0fiebWpYuRPtoN5vSrv/s8h/8ePrgd
         /2toI/0UfOkAItfF3Ta5uQClHnpYBGWjRVZ9Bd2RjdEZJMZxzj3LEOMXyoXa0sENcBny
         Bo8/Zxb3yDer4wjvukf6M1nQ2Ii6VIZaQb7vO6xVIa/qbCBrcz+LeEQFZ2uCJ/GFlivN
         5rFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=IuTJuHM4;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.79 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from aserp2130.oracle.com (aserp2130.oracle.com. [141.146.126.79])
        by gmr-mx.google.com with ESMTPS id a188si180925oob.1.2021.01.23.01.21.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Jan 2021 01:21:13 -0800 (PST)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.79 as permitted sender) client-ip=141.146.126.79;
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
	by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 10N9J5jq111878;
	Sat, 23 Jan 2021 09:21:11 GMT
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
	by aserp2130.oracle.com with ESMTP id 3689aa8scp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Sat, 23 Jan 2021 09:21:11 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
	by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 10N9KC5N071471;
	Sat, 23 Jan 2021 09:21:09 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
	by aserp3020.oracle.com with ESMTP id 368bm0xwyg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Sat, 23 Jan 2021 09:21:08 +0000
Received: from abhmp0010.oracle.com (abhmp0010.oracle.com [141.146.116.16])
	by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 10N9L18T024281;
	Sat, 23 Jan 2021 09:21:03 GMT
Received: from kadam (/102.36.221.92)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Sat, 23 Jan 2021 01:21:00 -0800
Date: Sat, 23 Jan 2021 12:20:51 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Lukas Bulwahn <lukas.bulwahn@gmail.com>,
        Masahiro Yamada <masahiroy@kernel.org>, linux-kbuild@vger.kernel.org,
        Nick Desaulniers <ndesaulniers@google.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
        Joe Perches <joe@perches.com>,
        Ralf Ramsauer <ralf.ramsauer@oth-regensburg.de>,
        Pia Eichinger <pia.eichinger@st.oth-regensburg.de>,
        kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] MAINTAINERS: adjust to clang-version.sh removal
Message-ID: <20210123092051.GT2696@kadam>
References: <20210121160115.4676-1-lukas.bulwahn@gmail.com>
 <CA+icZUV3p+yQYXn=iVseNNQwUSvoMwztLxNDOFpdFb731kDOJg@mail.gmail.com>
 <20210122123354.GR2696@kadam>
 <CA+icZUXxJnhXwiFAJ+f23xWLq-t6ZmF6X_wJPNaEoCVqjP4N=A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+icZUXxJnhXwiFAJ+f23xWLq-t6ZmF6X_wJPNaEoCVqjP4N=A@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9872 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 spamscore=0 suspectscore=0
 bulkscore=0 adultscore=0 mlxlogscore=999 phishscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2101230053
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9872 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 adultscore=0
 lowpriorityscore=0 mlxlogscore=999 clxscore=1015 phishscore=0 bulkscore=0
 spamscore=0 priorityscore=1501 mlxscore=0 suspectscore=0 impostorscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2101230053
X-Original-Sender: dan.carpenter@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=IuTJuHM4;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates
 141.146.126.79 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
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

In networking then they want you to say which tree it applies to, but
it's not as simple as saying "net" vs "net-next".  If it's a bugfix then
you should write that against "net" but if it's a clean up or a fix to a
recent change then it should be written against "net-next".

Also linux-next is not necessarily the same thing as net-next.
Networking patches should be written against either net or net-next, not
linux-next.

BPF tried to implement similar rules to they're not big enough to impose
their own rules.  It's quite a big headache to try to figure out which
tree to use if you're like me and have no clue about bpf.

Anyway, the point of the net vs net-next is that devs are supposed to
figure out the exact tree and they're supposed to only write net-next if
it doesn't apply to net.

It's not clear to me the value of putting linux-next in the subject.
Doesn't everyone develop against the latest devel tree?  Certainly I
can't imagine any maintainers doing extra work to try figure out the
date of the linux-next release.  Surely, they just say "Doesn't apply to
foo-tree.  Resend if necessary."  That's the fastest and easiest
response when patches don't apply.

regards,
dan carpente

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210123092051.GT2696%40kadam.
