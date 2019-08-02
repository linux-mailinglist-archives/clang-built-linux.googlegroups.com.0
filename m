Return-Path: <clang-built-linux+bncBCR5PSMFZYORBDOXSDVAKGQETCBFFMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id 696D67F6C4
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Aug 2019 14:24:46 +0200 (CEST)
Received: by mail-qt1-x83f.google.com with SMTP id h47sf67758621qtc.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 02 Aug 2019 05:24:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564748685; cv=pass;
        d=google.com; s=arc-20160816;
        b=beD/tTZNL1kP0Um8u8kZQ3VIPQI74aYJSfBiPANFwuiQYLpCjZT/v513hVC3rbHQ9Y
         IKeShjPLDbq9UbSbLpXW7GkDGEsoZKmFOFnoXtjJ61udzf/gJl2s+FGP5wBkTUOyEASj
         5uGHY4xJV1bSHDD/QQ2juXEHb4Gvt8g0DTnsEtrnhUtf7hAHDXLVOLTPuZXXDTZV2b3r
         BgbUVveAunbSNBsFPS+BMf9mTVpHv5DBMtwLSZJlUm84ckPYOIdrRQDv1qFBTf50Fp4v
         Isr5qs012fBLc8J9c0C7650jyuhTAqqxOQUC2z7zbagUch2PJsVEA1H7GdqxfBNt2K7U
         DVVw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=OKoHZCnowMIerD9hdwVUnsruaFKwCXJT5eS7+5qCfwU=;
        b=w4lW86Qlevnnh9J3o6erJqQyHM2i4JyeBUGAaoZh935eReAE4/LaPH3+Kb4ZvX/1fF
         iuT4ro+JdbxLsNWYPMzcGiehbP+UNNbdqCBUZb/4xDNfz24q94XRYcjlxKFaLLju0IrX
         V/2ffP9+spzekDjLE37VhjkJ4qHIuvEXPj1sB+q4GoNzrceNiAw+HNUFAo5/dYzpd0rJ
         6LXH58S4tiTaHDONuluibi6Rcery9L5lq9EZ7taFEdFg5NGtVR6l4jchVFVcf3NQI/4E
         oK6tkuLR7jZK2+Zw10oh7chy1/UBkRxT+6kcJQondNrSM/6LCZiyltIjXf9MLCzsPkyT
         KfIg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 2401:3900:2:1::2 is neither permitted nor denied by best guess record for domain of mpe@ellerman.id.au) smtp.mailfrom=mpe@ellerman.id.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OKoHZCnowMIerD9hdwVUnsruaFKwCXJT5eS7+5qCfwU=;
        b=m8SuubGL5XoCz20PGtcab2xkFXdL1CcjpgrBr2xmxTr+WKeS1i4DQFj2g1XiHqlu2K
         Jdk79GoQCw9a3SuP6GD01Ck+CwvcmAGfsb5khKQJMKkdVKr6EgKt84Tjef/L0wv1UW4J
         6dqSa1gU1j3b3DR9jFG5TvqYsNfEAQekNxvYdsK1E737kaLkbLcj59jLE0pG8IXoqpkb
         V+i5uJ2hJjHRsYOl/qZ2BCCYdqwRCHmonXt/L/Kaj8ffKuLM0yPLnoJ7VafBztXQabg7
         82jREBmIOQU23U8gSPZRrlSFS3DZbx1icjZMaQI49Xwmgn6Yam3jCRGI9rLrIqRSJ6H2
         T4/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OKoHZCnowMIerD9hdwVUnsruaFKwCXJT5eS7+5qCfwU=;
        b=Gpc1tb7msvfm71eFTmWA25Nj8g4t4RpyA09X0votgTu2zvb27WP8z2Af7tVXhyJwkz
         f7aSJJMctONPOyOz6hV+0i716iHyXLbWlkWw7vZezOLQjRFd6xqEO6g6Ffs4hswo80YH
         TkS218AyM3gVBenX0uWydVrUs62x+2R7NFQG0+jdE6fcTS+wvaYDh76w6ozptNmUD40S
         X6BW+xUHMfelkzJ7jMqM92k8jXgemsLIEbl7RkzBKt3HvctfrVNhm7GBx/WqyctOJIDa
         XgA3wK8GeO5HIY3xhgHwWff9Csixx7xM6Dn+IlEDBO0niqVFospsPc1LGOyLLDxbmwTE
         GIXQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUedDZT6EpZkdwsuBfn8wNBId6ElKvxc72sPyT+P3ej3PjAoW9d
	3hCqtcD45LDvGZXpj+9c8JM=
X-Google-Smtp-Source: APXvYqy+cJF6ixcSBOMBBHsMOdMDBmoiSSvZ5iA89GwyCbq3RzYgP86VJwjHWf2PTcbK9omur7USaw==
X-Received: by 2002:aed:3a24:: with SMTP id n33mr92874153qte.361.1564748685346;
        Fri, 02 Aug 2019 05:24:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:540b:: with SMTP id f11ls774252qvt.0.gmail; Fri, 02 Aug
 2019 05:24:45 -0700 (PDT)
X-Received: by 2002:ad4:4870:: with SMTP id u16mr92196872qvy.174.1564748685082;
        Fri, 02 Aug 2019 05:24:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564748685; cv=none;
        d=google.com; s=arc-20160816;
        b=vB/YQDm5Xg37woM+TRTD/13lmmzW7+M0HgWLc8T0cp12uqMKR3gld6FAr70cncMbqq
         uMCcd2qCwzCb7djCSpL8V17CVeTceBUw+Na9VEU+KsEnAtMwSDEP/1RBLe/qIqBaHeG6
         iAWKoUtHQq3XxxVWym9b6Y/UBwy1fFf7MdwocDuFEzIAyDFpAfLFQ8fJlufJ9z80pLWn
         opvr7m9DOJB6iz2aqVpVHZ25G9n5s7ZvHjjdqMWHds1xr+3XJAFAVtHpdd0i0C1nkGBi
         B7pKWW7iXMxe+jKKIOqWqhV6wmBq960xP0NXse7gWTCEGRe5gXoW/y5eg+jWxwOYRD/O
         VdCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from;
        bh=hK4nfZdZrCitjKZlAtpTi5tNZrePX2BxjTvhaKoCD1U=;
        b=Bk9ll+iIRtAmkutht3ZK0xW2dfJ2kkkfch/ClYyEQrrgA8bkFLMM2YAYscYVnjc/1U
         6DqiQi42jsGHCohfGR41WyOh0RvOXkaVzeT91WcgR3e0JAVy1JAnfB7NxB/NYAjn8gw3
         Z9ndP/hiZbvMq2+nAvCKvR9cpqVF5EylrNT8a9//ToyYO3gjlProm1/clS6J/MPOe2EK
         Rv6VxPgMvfcYQsWhgzDi8ZJDsUtRVNhYuGKewAZP02rcNLuyE8EB2m5FJ7b76oLZ+Axv
         uREAFs4YO8OGGxxwEVEazUXTgpgNwtjqDRrUKL+0AulW6L8KhFfJErj7JJwpePCvWuXb
         xKTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 2401:3900:2:1::2 is neither permitted nor denied by best guess record for domain of mpe@ellerman.id.au) smtp.mailfrom=mpe@ellerman.id.au
Received: from ozlabs.org (ozlabs.org. [2401:3900:2:1::2])
        by gmr-mx.google.com with ESMTPS id o56si511178qtf.0.2019.08.02.05.24.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Fri, 02 Aug 2019 05:24:44 -0700 (PDT)
Received-SPF: neutral (google.com: 2401:3900:2:1::2 is neither permitted nor denied by best guess record for domain of mpe@ellerman.id.au) client-ip=2401:3900:2:1::2;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 460RDj5TGBz9sDB;
	Fri,  2 Aug 2019 22:24:37 +1000 (AEST)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Tyrel Datwyler <tyreld@linux.ibm.com>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, linux-pci@vger.kernel.org, linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH v2] PCI: rpaphp: Avoid a sometimes-uninitialized warning
In-Reply-To: <20190802001102.GG151852@google.com>
References: <20190603174323.48251-1-natechancellor@gmail.com> <20190603221157.58502-1-natechancellor@gmail.com> <20190722024313.GB55142@archlinux-threadripper> <87lfwq7lzb.fsf@concordia.ellerman.id.au> <20190802001102.GG151852@google.com>
Date: Fri, 02 Aug 2019 22:24:36 +1000
Message-ID: <87v9vfkb5n.fsf@concordia.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mpe@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 2401:3900:2:1::2 is neither permitted nor denied by best guess
 record for domain of mpe@ellerman.id.au) smtp.mailfrom=mpe@ellerman.id.au
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

Bjorn Helgaas <helgaas@kernel.org> writes:
> On Mon, Jul 22, 2019 at 02:05:12PM +1000, Michael Ellerman wrote:
>> Nathan Chancellor <natechancellor@gmail.com> writes:
>> > On Mon, Jun 03, 2019 at 03:11:58PM -0700, Nathan Chancellor wrote:
>> >> When building with -Wsometimes-uninitialized, clang warns:
>> >> 
>> >> drivers/pci/hotplug/rpaphp_core.c:243:14: warning: variable 'fndit' is
>> >> used uninitialized whenever 'for' loop exits because its condition is
>> >> false [-Wsometimes-uninitialized]
>> >>         for (j = 0; j < entries; j++) {
>> >>                     ^~~~~~~~~~~
>> >> drivers/pci/hotplug/rpaphp_core.c:256:6: note: uninitialized use occurs
>> >> here
>> >>         if (fndit)
>> >>             ^~~~~
>> >> drivers/pci/hotplug/rpaphp_core.c:243:14: note: remove the condition if
>> >> it is always true
>> >>         for (j = 0; j < entries; j++) {
>> >>                     ^~~~~~~~~~~
>> >> drivers/pci/hotplug/rpaphp_core.c:233:14: note: initialize the variable
>> >> 'fndit' to silence this warning
>> >>         int j, fndit;
>> >>                     ^
>> >>                      = 0
>> >> 
>> >> fndit is only used to gate a sprintf call, which can be moved into the
>> >> loop to simplify the code and eliminate the local variable, which will
>> >> fix this warning.
>> >> 
>> >> Link: https://github.com/ClangBuiltLinux/linux/issues/504
>> >> Fixes: 2fcf3ae508c2 ("hotplug/drc-info: Add code to search ibm,drc-info property")
>> >> Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
>> >> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
>> >> ---
>> >> 
>> >> v1 -> v2:
>> >> 
>> >> * Eliminate fndit altogether by shuffling the sprintf call into the for
>> >>   loop and changing the if conditional, as suggested by Nick.
>> >> 
>> >>  drivers/pci/hotplug/rpaphp_core.c | 18 +++++++-----------
>> >>  1 file changed, 7 insertions(+), 11 deletions(-)
>> >> 
>> >> diff --git a/drivers/pci/hotplug/rpaphp_core.c b/drivers/pci/hotplug/rpaphp_core.c
>> >> index bcd5d357ca23..c3899ee1db99 100644
>> >> --- a/drivers/pci/hotplug/rpaphp_core.c
>> >> +++ b/drivers/pci/hotplug/rpaphp_core.c
>> >> @@ -230,7 +230,7 @@ static int rpaphp_check_drc_props_v2(struct device_node *dn, char *drc_name,
>> >>  	struct of_drc_info drc;
>> >>  	const __be32 *value;
>> >>  	char cell_drc_name[MAX_DRC_NAME_LEN];
>> >> -	int j, fndit;
>> >> +	int j;
>> >>  
>> >>  	info = of_find_property(dn->parent, "ibm,drc-info", NULL);
>> >>  	if (info == NULL)
>> >> @@ -245,17 +245,13 @@ static int rpaphp_check_drc_props_v2(struct device_node *dn, char *drc_name,
>> >>  
>> >>  		/* Should now know end of current entry */
>> >>  
>> >> -		if (my_index > drc.last_drc_index)
>> >> -			continue;
>> >> -
>> >> -		fndit = 1;
>> >> -		break;
>> >> +		/* Found it */
>> >> +		if (my_index <= drc.last_drc_index) {
>> >> +			sprintf(cell_drc_name, "%s%d", drc.drc_name_prefix,
>> >> +				my_index);
>> >> +			break;
>> >> +		}
>> >>  	}
>> >> -	/* Found it */
>> >> -
>> >> -	if (fndit)
>> >> -		sprintf(cell_drc_name, "%s%d", drc.drc_name_prefix, 
>> >> -			my_index);
>> >>  
>> >>  	if (((drc_name == NULL) ||
>> >>  	     (drc_name && !strcmp(drc_name, cell_drc_name))) &&
>> >> -- 
>> >> 2.22.0.rc3
>> >> 
>> >
>> > Hi all,
>> >
>> > Could someone please pick this up?
>> 
>> I'll take it.
>> 
>> I was expecting Bjorn to take it as a PCI patch, but I realise now that
>> I merged that code in the first place so may as well take this too.
>> 
>> I'll put it in my next branch once that opens next week.
>
> Sorry, I should have done something with this.  Did you take it,
> Michael?  I don't see it in -next and haven't figured out where to
> look in your git tree, so I can't tell.  Just let me know either way
> so I know whether to drop this or apply it.

Yes I have it in my next-test, which will eventually become my next when
I get time to rebase it, test and push etc:

https://git.kernel.org/pub/scm/linux/kernel/git/powerpc/linux.git/log/?h=next-test

So no further action required on your part.

cheers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87v9vfkb5n.fsf%40concordia.ellerman.id.au.
