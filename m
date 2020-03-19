Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBZX6Z3ZQKGQEAHZ5Y2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id B956418BFAA
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 19:52:23 +0100 (CET)
Received: by mail-yb1-xb39.google.com with SMTP id j10sf1559770ybh.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 11:52:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584643942; cv=pass;
        d=google.com; s=arc-20160816;
        b=QAS4wRRhuR3ZsGMAcwV3qnZn70X+JZs05P8zlZPELAvVIR5MKt7meKwqhycms5ZDT4
         hMqPr3BsWCsUiUjKp2qwBBqx9aJllOa5pWegkcIth7LAzDeBRuExyYc1Ol1yFkn043u0
         HpDyclB2A3J0BzbiXL8Z6m1tO21mn/YhqW1E62C2mU/Ueo6W2siL8o/j+KWPWrDcBqvC
         VFA1hzXHJMQUgji4LLDghx5CWxk4Fk0FZ+0khQuf+iIdYbKQAgqlCcfFf1DlxJyWygQw
         hE1TFNaDObHHaRZqS41HQ3Tn1GQ0yBq2apzeizfnw/UY3ah3fIwBjjgF9Jnr6Gld6COo
         vNqw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=9HCcuzKWKbHpwDdOWnxF29DPj1zpfrzPYHoLGJOywqg=;
        b=XoxAUgLieSrC2pYgg6GhXFK+kg7XULXzII07nYxojLCX9U84PaQ2W/FVZqbZsLyNDq
         /llPpQr3/g8nLXKy4+wFrhyQUnoZd2wKaIjocV9Y6KFET1L+EmXoyjeAacpyNzpaEveE
         kERHRnklu3RIX2adLnjvazo6hOsgTBLiphUKWJpn3ByUBFwE9yDs33ohG2lduFLCEdiK
         lA29KRpdVJO9QxZoO2w8DA28ZpiuA4QxKh0YlKrCta7lt0W++v+vnMBQoS19PmJa0XJ9
         Sn1RPO+9SDBxsJbJ/I/AjQuQ40i3+oxOiZIcsM6kl1agC3jyO2YY099HMBxl3872ZMn1
         4i2w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=HHGlocEe;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9HCcuzKWKbHpwDdOWnxF29DPj1zpfrzPYHoLGJOywqg=;
        b=I7bIaCDuwSm3pK+nrl8MQxer91uWWhIoShd/ET+uJe5Nl3oSLVYZsR9d+pP4a/pzKB
         aIT3IMh1URr+K8Ylq83CNl7aanIDYffVwa98znWIwoEjXp+J/NeL1xnIGBQetsoTlwTz
         CsOz9T0lzpikmtmoDJ+0hbGvL7ZN9kFcx7XK7Ciygcw26baJteH3I8I7wAkM67ZhPrNY
         IqMUAxFqqLwFq4rquwUF84K+YjdQbl7/5t9DsHO37eQ86miZ0X4RV9Ch3KgiJ2h+WMbR
         VpqJdRrOMM9LpYynVOy3+AmeRHn7nZGuPahW2NyHei83cKD0r0XvIH7Sk++1GSlkWV02
         mErw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9HCcuzKWKbHpwDdOWnxF29DPj1zpfrzPYHoLGJOywqg=;
        b=XRVyTMSsrri/+KjMi87rqnn4WY8XgYE55YQp6C2UB/M8hDiA+m1YtfQCDcGGtn/qO+
         elMRPYfrpincAvIjTPQqarUETzyTK3Z5eWDNkPCoU2wRiyggYcifPyEudW1ksgXRMDaP
         kqtjFqXiUeuzv0AKv8seQ7zxRFZKtMOgLZ76uhN5hxt1Hxpu7I19ZTqY10JkrQcBKBOi
         vtImyOa+2rHuQ/dKsRkdmjwb05MqvcpDzS9E+jaj728XwHh8kY/Dp2f1abhFPSHN3+VB
         PUUrnvaXUjUUx4o6Kt0TFWIc9QFjeSftF8SNRjkh+RTph37b5eaSAEkvLjmXcB2P905Y
         o/0w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0+HL2vx4Gy6QpF7v4QwrnPYrlIgCjJmt0IXJ6A8LdE9TXwNq9g
	7wTaoTPiUZ371UClwVnrKAo=
X-Google-Smtp-Source: ADFU+vuaUDRvR+Y/8wC61EwaVMsxtopcexQWGD6rJjPR6/u6dzQMvl8NArRH08OtTNXaNvAJSKrPiw==
X-Received: by 2002:a25:6d54:: with SMTP id i81mr7169573ybc.245.1584643942580;
        Thu, 19 Mar 2020 11:52:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:5789:: with SMTP id l131ls1204845ybb.9.gmail; Thu, 19
 Mar 2020 11:52:22 -0700 (PDT)
X-Received: by 2002:a25:86c8:: with SMTP id y8mr7277533ybm.406.1584643942169;
        Thu, 19 Mar 2020 11:52:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584643942; cv=none;
        d=google.com; s=arc-20160816;
        b=YAAnGfwMdpu1Gy0waateneyxp9MznDVL01KTJdJ5d53c4RR3+D1ffBKHnrcng5LpKB
         kbJU3bpPe7HoalcOu3eANQgHsMwjq/4nSaj1OLHCmnXx0NGtL0i/ChOZJlN2y6unDt1z
         SpedMNogXLFefr4X96Boakg0QdEO6/V/Bp0Y2Io8phpjjwllBFa/KNNb7Lx255Zf+vSz
         RVl+J7IuBdRuh9FrQyoogky0GYkCJG5Wmxir6RFqkFbi0BtAUxeCt7lzo4vOM7dmRe26
         c9LruaP4rJulMa23q4t/WXdjrHcss59zUYX7qWyFkCJ+tBsJvqr1UMzy3ziD5hmGrqf2
         5g+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=YWvryETrBKhX2zGEhkwWtLCDgV8s1wkdmU/22DR0SFc=;
        b=jJUiiX+5F6Age0/hSUpxyBKL/lJMA7+0B9CpzK0VL0w3krAapEBa+EGqKKrclVxpMv
         GYEvKQUvp7H5nxfTEnhfoBtKyU+YjXqQmS142QTsvmr6YsJuLewGmxV1abah7ibsRpM/
         6rnlF9Ljn5TgkYczt7U10FggjgkRAocxhp5ZZVQR7YZSL8HRYhi/Ba802DbrLNJDlRdv
         g+fjZyYLaZuZ7PRAxejRnuplfJFEgAuZo7awieQM+N1mUzz05c/+3UpVuPdhtMoABUvH
         n125QyOTVj42ozKu7f3HR8FY2Bz2HsrUe6bCevxWQrhvpHRIbNa4OxV0Q2bEDclW0z0u
         d/pw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=HHGlocEe;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y140si160238ybe.1.2020.03.19.11.52.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2020 11:52:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 132C92070A;
	Thu, 19 Mar 2020 18:52:19 +0000 (UTC)
Date: Thu, 19 Mar 2020 18:52:16 +0000
From: Will Deacon <will@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"stable@vger.kernel.org" <stable@vger.kernel.org>
Subject: Re: [PATCH] arm64: compat: Fix syscall number of compat_clock_getres
Message-ID: <20200319185216.GD27141@willie-the-truck>
References: <20200319141138.19343-1-vincenzo.frascino@arm.com>
 <20200319181203.GB29214@mbp>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200319181203.GB29214@mbp>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=HHGlocEe;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Thu, Mar 19, 2020 at 06:12:03PM +0000, Catalin Marinas wrote:
> On Thu, Mar 19, 2020 at 02:11:38PM +0000, Vincenzo Frascino wrote:
> > The syscall number of compat_clock_getres was erroneously set to 247
> > instead of 264. This causes the vDSO fallback of clock_getres to land
> > on the wrong syscall.
> > 
> > Address the issue fixing the syscall number of compat_clock_getres.
> > 
> > Fixes: 53c489e1dfeb6 ("arm64: compat: Add missing syscall numbers")
> > Cc: Catalin Marinas <catalin.marinas@arm.com>
> > Cc: Will Deacon <will.deacon@arm.com>
> 
> Will left ARM about 8 months ago IIRC ;).

Haha, well I certainly tried to!

> > Cc: stable@vger.kernel.org
> > Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> 
> Acked-by: Catalin Marinas <catalin.marinas@arm.com>
> 
> I think Will could take this as a fix.

For sure, I'm queuing it now.

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200319185216.GD27141%40willie-the-truck.
