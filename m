Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBB24WQH2QKGQEY2JCZYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 552801B4697
	for <lists+clang-built-linux@lfdr.de>; Wed, 22 Apr 2020 15:49:32 +0200 (CEST)
Received: by mail-lf1-x13b.google.com with SMTP id d5sf933915lfb.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 22 Apr 2020 06:49:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587563372; cv=pass;
        d=google.com; s=arc-20160816;
        b=jNXPKSn6Hzmm+yXlkOjQgQcTvoR0eNmbInz5BmfZ9MngZRBPxRYKINPEIk0Na2PH/T
         ARoFfkXAZpZz9GMv8xhJkpLmIiWVXUrYGSOfC+uIlE+AixuoM0iVrkl0QIMSMyO0PYD0
         yjUkc+CzFKmfm+O+iETDXdMlKEqBoYLyO0ZCdpGOlMlG4owO8cGGNWdrWIQbClCkfkOT
         OhivaNhqgyITRYu4c7jIYPbP6m6eUQwjdW31AXCWuoOBlPGkJPxvhFEzmGrIuC6WCaQQ
         Edm+8XFyj5XqV12SSPriKz5elvcGLksyNFeVHBcSN9S8DvBUtkt0/yl+opV6cxMYw0Df
         yxSw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=Bx4nD7cLOdsiu6CjF4lFgpapGFCwiQoQumtHl7XxS88=;
        b=sD5tXzLsuexUZqKRwRX8gGgaX9BijpGEof5eSI1PHHRQqXLChw4qUxicnIpMCq6Pq6
         S3PUOvsLeWkVQ+CkDnRtpsIGOY3KpVW4+cqM9PK9diyGsO95CZCkxspan1AK9czKPDYS
         o8r/XgjOymPSm1ttUuPe25SMF+KPkzQLC+TbLPkNUI7zvAjVtB0F7JwCgXEwZSaWfyW3
         rNNVsTjyYYQ5y68mA8euAHzb0yGwbxBYgQqGxwLg9IbMLZGg2XdLisDd6eSfVDrkIWEI
         bKgI6c3jWaMc0vQdlZV4gpvvbrz9aCnxh5XHre0knt5sPGzfVk6qbu3UW+iFk+V6VfVP
         O3nw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=dL4JFbeX;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Bx4nD7cLOdsiu6CjF4lFgpapGFCwiQoQumtHl7XxS88=;
        b=G5ezMMHX7osRPRvugzAS0bA7I3CALZbS7IZJOQLGexAmQPn3uEVPJz5fPGqIdXCb3x
         SFQGogieTgpJdgCbbkEcZ0d+2eIjqkhPnXazMMsI0a2elrD87SdVi4/gZB8+QqTvcaHz
         hKfd+TkfC1eWTHafmTg8a545sgy3xn/ZAc52H0RhoFpDd9M3dn+9mPzSe1dZ9VSLSdKt
         /PMYTTHTbtFIr3ExoFZZr0uo+79+awv+u6icyBnDD0z1jQKiUEInQAx8E79tOMMbd9Iy
         fxjkCpLhmCbx1lC1oHmYx+ZajVIwlmbnfEhw4Zf/4br8Owidm7a2P1snPaKa8hyKlExZ
         sMKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Bx4nD7cLOdsiu6CjF4lFgpapGFCwiQoQumtHl7XxS88=;
        b=mshj1dQYFe7nWVr5qPgz4Cl9mqqyOI/OM/FJA1gZlwF7JMFF8SKDvApWIcY1NZ3lT7
         TSc7nvq7sZRBggNWUHLsnW2VoS/+qoWJRbk7ymn/Zu8Ji0guJRxr37Xoslvi4R6knwsb
         hkMMdQPHtqaEzYiU5vCiJ2RXAJkTb7Cge1SNQ5GHnKCGe1A9InoGvBspSHtTozsPCoRf
         PG7aEzbugn02C6zWUOkGPZoCzbKF/G6QJeXKePpJqrN29icVOsagmXQcnEPtPXb4GkTk
         DdIWxzGVYYzi9CUxg1NJyaNmLf0bDmdSJPx9hQ3CmTBa8LUQf/Sg0qfT9DuOtgqleAEx
         OD9w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubFIhkO+izHBZSymjcgZOwPmsj+axuQP5gCg/Afy4WSJ9L8AVRJ
	rwXin/ilQ1LvPecCJLMbKxE=
X-Google-Smtp-Source: APiQypLY+WyFUQNCEye20DhwYAXBHbjbutKcRrOXk2HnS3JS0tnDIU36yJyfAqhJG4XuwsJjljOqcA==
X-Received: by 2002:a2e:a40b:: with SMTP id p11mr15917084ljn.173.1587563371900;
        Wed, 22 Apr 2020 06:49:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:2002:: with SMTP id s2ls558127ljo.3.gmail; Wed, 22
 Apr 2020 06:49:31 -0700 (PDT)
X-Received: by 2002:a2e:860a:: with SMTP id a10mr17150304lji.20.1587563371306;
        Wed, 22 Apr 2020 06:49:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587563371; cv=none;
        d=google.com; s=arc-20160816;
        b=oG9cmn2/lfbOnMPSMYYF7k6GiQsX8C/2+iObSOw7VbPnbOYt2MqIg/FmPOHvO8Xfez
         c9rQeq02aeqHwWv2te07g7VJGPot+ebMM5OzjOq44FGzPOk5YRopzNkdLNE8bRlE5YGj
         oKoHoq938XX65jUSWJe36KIWL69v9WzYsImf4W5UaMBvyzyDzZ37/7NnbnVrlnrZkjxL
         px8BXStS7ai+N5CJXQq/0IEArOLPyDnOmbUySVdOSsohAdo8ys/O976Jrji2hmBbL910
         F8tfTrPttLbClMg87/b2NeDz0LzmG6aX6gySAsTnFJJj09agmoIhpbMj3P9oH6a6+tOC
         d3aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=pjJUGvvHbF342Ojz5AzX+vMNq90Z6OoibhaVBox2OyY=;
        b=elVxt6SyckPddTprEcshXnlgm7vEHMoxYplMNyAWv5TBta7YkBZNGWlE7scD1mXEsU
         O7MmlUWNMhxhCMPhR/021/k83CVjLmKZwvcCUI736dcM88EZK3wvtCOe+nOp1OW/xE50
         XBykXUNTiEpPPgVCUhiiskNgr/8S9uqBDJT4UfPYPGSS3z5thOUnb5HU3u8VXfWNpx3k
         Vu31f2K9iaL9Dl90gVtPJ7IQ2sm5LB0uSM/pUtp+XPPn5q6XPxdf/31mOnIwBn4IwCAL
         CH3f6M8lJ84MfC9tytrSLIWYIF2z5uRUpTKTxCUIpEaqQo4lvMlS8SYS9u1VHKo7l9se
         RGSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=dL4JFbeX;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [2a01:4f8:190:11c2::b:1457])
        by gmr-mx.google.com with ESMTPS id f17si428556lfp.0.2020.04.22.06.49.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Apr 2020 06:49:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) client-ip=2a01:4f8:190:11c2::b:1457;
Received: from zn.tnic (p200300EC2F0DC10060EB155E24FF7BBC.dip0.t-ipconnect.de [IPv6:2003:ec:2f0d:c100:60eb:155e:24ff:7bbc])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 3435F1EC0D1F;
	Wed, 22 Apr 2020 15:49:30 +0200 (CEST)
Date: Wed, 22 Apr 2020 15:49:24 +0200
From: Borislav Petkov <bp@alien8.de>
To: Peter Zijlstra <peterz@infradead.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Michael Matz <matz@suse.de>,
	Jakub Jelinek <jakub@redhat.com>,
	Sergei Trofimovich <slyfox@gentoo.org>,
	LKML <linux-kernel@vger.kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>,
	Andy Lutomirski <luto@kernel.org>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH v2] x86: fix early boot crash on gcc-10
Message-ID: <20200422134924.GB26846@zn.tnic>
References: <20200417084224.GB7322@zn.tnic>
 <20200417085859.GU2424@tucnak>
 <20200417090909.GC7322@zn.tnic>
 <CAKwvOdnFXPBJsAUD++HtYS5JiR2KmX73M5GAUe-tvX-JYV7DaA@mail.gmail.com>
 <CAKwvOdmNwNwa6rMC27-QZq8VDrYdTQeQqss-bAwF1EMmnAHxdw@mail.gmail.com>
 <20200417190607.GY2424@tucnak>
 <CAKwvOdkkbWgWmNthq5KijCdtatM9PEAaCknaq8US9w4qaDuwug@mail.gmail.com>
 <alpine.LSU.2.21.2004201401120.11688@wotan.suse.de>
 <20200422102309.GA26846@zn.tnic>
 <20200422114007.GC20730@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200422114007.GC20730@hirez.programming.kicks-ass.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=dL4JFbeX;       spf=pass
 (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as
 permitted sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=alien8.de
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

On Wed, Apr 22, 2020 at 01:40:07PM +0200, Peter Zijlstra wrote:
> You haz a whitespace issue there.

Fixed.

> Also, can we get this in writing, signed in blood, from the various
> compiler teams ;-)

Yah, I wouldn't want to go fix this again in gcc11 or so. That's why I
wanted the explicit marking but let's try this first - it is too simple
to pass over without having tested it.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200422134924.GB26846%40zn.tnic.
