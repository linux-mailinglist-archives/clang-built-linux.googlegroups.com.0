Return-Path: <clang-built-linux+bncBDXJDZXNUMORBGX7RXVAKGQEPOR7GRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id 92DF07E714
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Aug 2019 02:11:07 +0200 (CEST)
Received: by mail-ua1-x93a.google.com with SMTP id p22sf7438693uaq.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Aug 2019 17:11:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564704666; cv=pass;
        d=google.com; s=arc-20160816;
        b=D1YCdSG17fDO9RMWjGLExvJdyBlcwaKZAqgrUA9B/VpfaHfR71eYh+hW+wNT+aIF6c
         4lb7rYz9g5NcNNqzFTELH+XvQfPiJsxX6LZBmjnCYwbILU6cFML39ZbMknnF0h0iR16U
         tiNXPm5hu+t2TjXfsAxzM0dg/fxMa2NYRyF9xir4NpC2LT7JdHTX5XS9boTmhSHImK9X
         TB80BRK6BBgOSZWE8VPG0hbPR5J8L1gOaN02ngKgAlnRtY+7XBZl18TKSmC9k59GOaws
         AhoMZ2NJQ76nRAs6Bc9FLU1ni6RXsTjEi0afJvbfYrzgmMPkk6XVaN+EApYaayxurnFN
         ibJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=wZbYaJWc21OI+gPFf2oHxAzwAiUudSsMb4ZBh+sqcpE=;
        b=xZsByqPRk0pW2ucrXLbfJGXU3lETxWDNrCDqw5NL57HUqjKv8zUQLojgCpz7ThWRSK
         gjK80zOq2/dLBJvrNQzgpqkA8RSOuFJbaTNBDZ7Co5YYA6bm+ehJ/vxJUIupLDMWIEbG
         /yD1VW+cHtDHDtzQvZTe15OGtbL1b4LhIS6ERllJJwZq799oxJBD5U+/9UeyO8oj3eoa
         xKaTN7/SSCgxdQpbkoiQy2sUr3/suvteEF27QNwSh8SBEI2hfrz2aGc3zxCCs4Si44/i
         QFOnbFxyrrnkIxMAjvHlei9Zqpr+WI3mA+ldRl5/KQsmxI6npTt1kSOw10C3NkOoSBgA
         WkEQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=fnX7M40a;
       spf=pass (google.com: domain of helgaas@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=helgaas@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wZbYaJWc21OI+gPFf2oHxAzwAiUudSsMb4ZBh+sqcpE=;
        b=Rk0CDvZYiW4gXMdqCrWwQ4oewXXi7L0EBgphlmituwpWVbdaHKybduWbhyefvwASQz
         ike1yDv5EXxS7HZXLswr7p/CgJeHvB4oq1f3Qi4YB5NrbwVJnwIPmpZvy4awcR1pGuR3
         isVqHBz1KI01AyTdX+PsouunA/zfLX6Ig09eOnuDJkjUb8kIi3r8nx7H5NRpg66iW5SB
         LnRa0jSg4TiUZTze1Ij0dJ2jf0Mtfpb7hBO8A+thxGJjGpV7ApTvY4LztTDxZLypie01
         B9k+zGzEI1f3dOpxSmzBSUsYxqZGZp7G9Wl2j8u5kafc+ZieYoYRIUpPy3G3Xbf/y8w+
         NRvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wZbYaJWc21OI+gPFf2oHxAzwAiUudSsMb4ZBh+sqcpE=;
        b=f5ehpjVtKOm25Ukfoa9qfwc18YF4Ob8W8G9IOAjCjTZcl38KkeyTfw55OTk4n6VlIG
         S8bvmE5AJFKIoPnpyJf8CnI9JMcJopIscZXWW7RSjRA1byqsra+zPD4RknrVjlpu9mim
         RY0rOvg9VrOYJY/exYkCZeFJeKS494/p1KV9EOjSBhBcfPCyT3/esICV7hYnRxTN/SNJ
         HEk9YKEDYVLcFe21a/BtWeLC03KzgEXkQU7fdH9O0cwZJdSWGuOomTMdOnbDCGnXVwD7
         MKyiGkoohTLMtyWcJqKI4Aol2Alqtl6BhFAgLMZG/5hBj8dyv5ndCMOjwLsO5FfaqH0w
         ViQw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX0WTsQj8B+1gbw7IJJaKHxEzCULEwwpff3eIaAaJ+94ha6WaZ2
	9AN8f1mnQ/ryAWyKE/+EhBw=
X-Google-Smtp-Source: APXvYqzRZJEIMQm+Dtla7hG2oVc4gf1Z0A6BDVOuX7EaTw3aKqyhO9FHrocL44zo+/7ntO+s33z0Ww==
X-Received: by 2002:a67:e8c3:: with SMTP id y3mr81681633vsn.94.1564704666535;
        Thu, 01 Aug 2019 17:11:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:986:: with SMTP id x6ls5638265uag.5.gmail; Thu, 01 Aug
 2019 17:11:06 -0700 (PDT)
X-Received: by 2002:ab0:3003:: with SMTP id f3mr2433110ual.86.1564704666255;
        Thu, 01 Aug 2019 17:11:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564704666; cv=none;
        d=google.com; s=arc-20160816;
        b=Owu+0fMKhZzdEva3Eu449KGWJQgBYlooLy1zwUIqGbFpALd/iX6FAz7/EkEiaG3/9t
         4l9FTI6rfcFLg6ZIrwlGUhJ/x9ZiIqqgnIMClbV1m9bBiSJO89BqIh+eJ3jaCqs5exxq
         eQbbd+4GvM9AZoNRE99jy0Gliql7QmuWKSbT1/qXNaKL45wgyrV7M3qG0rqv1DfUbOoz
         q5k1TiKxZF5bYP3bZxd+Ns+keUw+zrzvnu+5ySE/3iKNR87NrvgrphspYYCtgl45EEjr
         jnQpAtyM6HW6IeNAngt+WTamqPXbBIOWVw6U5Hv194nlOJ2u+efSvE2OF9TX71Qf6qQS
         rwIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=QaS2E44QyIeJ5MgCE5ZuHxIPF3uDNwYQ6P5hgSt/9/Q=;
        b=freh/38xVg73eOseAlbUDweyxwqvkXbFWBs6elwtvhNlrC/eKWGd8AFP/xBjnzcdtO
         wMGd2JH6+H3oZo1Bn9WNeXR6c9JCd2wq1JLMSKVZ3ahJRMbun3biFdePnRPyTz0CTlqn
         E6d/fuWw3LYTAPzP9GtIGGUpQTqpYlKKbtW8gSDtaNtGTMs4yptrmIbDnLVFo5d/AhZC
         5LT5mOdGmaQyLke8HZiMp/1xRa6HmMcGziuB4xJ3ymRnZujLbtxKsvgT5DGhjG9QrVYP
         FcSm2pi9ZXJbpomQR6Fm9rYONr4OHiRMcKh/4SqZdWRUmQkkmE3ZchEVSr87SAYk+JEb
         OwSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=fnX7M40a;
       spf=pass (google.com: domain of helgaas@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=helgaas@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d8si3531667uam.0.2019.08.01.17.11.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Aug 2019 17:11:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of helgaas@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (unknown [69.71.4.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1394A2080C;
	Fri,  2 Aug 2019 00:11:03 +0000 (UTC)
Date: Thu, 1 Aug 2019 19:11:02 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Michael Ellerman <mpe@ellerman.id.au>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Tyrel Datwyler <tyreld@linux.ibm.com>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>, linux-pci@vger.kernel.org,
	linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH v2] PCI: rpaphp: Avoid a sometimes-uninitialized warning
Message-ID: <20190802001102.GG151852@google.com>
References: <20190603174323.48251-1-natechancellor@gmail.com>
 <20190603221157.58502-1-natechancellor@gmail.com>
 <20190722024313.GB55142@archlinux-threadripper>
 <87lfwq7lzb.fsf@concordia.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <87lfwq7lzb.fsf@concordia.ellerman.id.au>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: helgaas@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=fnX7M40a;       spf=pass
 (google.com: domain of helgaas@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=helgaas@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Mon, Jul 22, 2019 at 02:05:12PM +1000, Michael Ellerman wrote:
> Nathan Chancellor <natechancellor@gmail.com> writes:
> > On Mon, Jun 03, 2019 at 03:11:58PM -0700, Nathan Chancellor wrote:
> >> When building with -Wsometimes-uninitialized, clang warns:
> >> 
> >> drivers/pci/hotplug/rpaphp_core.c:243:14: warning: variable 'fndit' is
> >> used uninitialized whenever 'for' loop exits because its condition is
> >> false [-Wsometimes-uninitialized]
> >>         for (j = 0; j < entries; j++) {
> >>                     ^~~~~~~~~~~
> >> drivers/pci/hotplug/rpaphp_core.c:256:6: note: uninitialized use occurs
> >> here
> >>         if (fndit)
> >>             ^~~~~
> >> drivers/pci/hotplug/rpaphp_core.c:243:14: note: remove the condition if
> >> it is always true
> >>         for (j = 0; j < entries; j++) {
> >>                     ^~~~~~~~~~~
> >> drivers/pci/hotplug/rpaphp_core.c:233:14: note: initialize the variable
> >> 'fndit' to silence this warning
> >>         int j, fndit;
> >>                     ^
> >>                      = 0
> >> 
> >> fndit is only used to gate a sprintf call, which can be moved into the
> >> loop to simplify the code and eliminate the local variable, which will
> >> fix this warning.
> >> 
> >> Link: https://github.com/ClangBuiltLinux/linux/issues/504
> >> Fixes: 2fcf3ae508c2 ("hotplug/drc-info: Add code to search ibm,drc-info property")
> >> Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
> >> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> >> ---
> >> 
> >> v1 -> v2:
> >> 
> >> * Eliminate fndit altogether by shuffling the sprintf call into the for
> >>   loop and changing the if conditional, as suggested by Nick.
> >> 
> >>  drivers/pci/hotplug/rpaphp_core.c | 18 +++++++-----------
> >>  1 file changed, 7 insertions(+), 11 deletions(-)
> >> 
> >> diff --git a/drivers/pci/hotplug/rpaphp_core.c b/drivers/pci/hotplug/rpaphp_core.c
> >> index bcd5d357ca23..c3899ee1db99 100644
> >> --- a/drivers/pci/hotplug/rpaphp_core.c
> >> +++ b/drivers/pci/hotplug/rpaphp_core.c
> >> @@ -230,7 +230,7 @@ static int rpaphp_check_drc_props_v2(struct device_node *dn, char *drc_name,
> >>  	struct of_drc_info drc;
> >>  	const __be32 *value;
> >>  	char cell_drc_name[MAX_DRC_NAME_LEN];
> >> -	int j, fndit;
> >> +	int j;
> >>  
> >>  	info = of_find_property(dn->parent, "ibm,drc-info", NULL);
> >>  	if (info == NULL)
> >> @@ -245,17 +245,13 @@ static int rpaphp_check_drc_props_v2(struct device_node *dn, char *drc_name,
> >>  
> >>  		/* Should now know end of current entry */
> >>  
> >> -		if (my_index > drc.last_drc_index)
> >> -			continue;
> >> -
> >> -		fndit = 1;
> >> -		break;
> >> +		/* Found it */
> >> +		if (my_index <= drc.last_drc_index) {
> >> +			sprintf(cell_drc_name, "%s%d", drc.drc_name_prefix,
> >> +				my_index);
> >> +			break;
> >> +		}
> >>  	}
> >> -	/* Found it */
> >> -
> >> -	if (fndit)
> >> -		sprintf(cell_drc_name, "%s%d", drc.drc_name_prefix, 
> >> -			my_index);
> >>  
> >>  	if (((drc_name == NULL) ||
> >>  	     (drc_name && !strcmp(drc_name, cell_drc_name))) &&
> >> -- 
> >> 2.22.0.rc3
> >> 
> >
> > Hi all,
> >
> > Could someone please pick this up?
> 
> I'll take it.
> 
> I was expecting Bjorn to take it as a PCI patch, but I realise now that
> I merged that code in the first place so may as well take this too.
> 
> I'll put it in my next branch once that opens next week.

Sorry, I should have done something with this.  Did you take it,
Michael?  I don't see it in -next and haven't figured out where to
look in your git tree, so I can't tell.  Just let me know either way
so I know whether to drop this or apply it.

Bjorn

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190802001102.GG151852%40google.com.
