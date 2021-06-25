Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBI7P3CDAMGQEBVY2L2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id 6085A3B49AA
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Jun 2021 22:08:05 +0200 (CEST)
Received: by mail-pl1-x63a.google.com with SMTP id o7-20020a1709026b07b029011a0d4de43dsf4207160plk.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Jun 2021 13:08:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624651684; cv=pass;
        d=google.com; s=arc-20160816;
        b=jA8EpeS7GMVIMRdPqpi4ju4FxvxlZxZ6ICH+bHqbRrXC9E1JIjsxSpE0wPpFMy356t
         /Jso07JCxoxkvgS0LcL8jQYko4VvwemqDDTQf2FKIIk1NdTd/2VW0vH9Mb1Vts84vDw2
         koBoD2soflHIA/UcLNru3mD4iNqpAiR7zGIug3IEIJOU9SzJ08lokRUEVg7djQ+dSlJf
         M+BXOD4a9Rukfi/QDknnIjpsQ+gb45NA08yizsZ8/YcVO9ZOIIWji1oCVWScSswF8vGF
         +dnGDp24LXM4gnXl7RruwOS2KBDy4MWP9sQs5pSEOXQGdDZsEgmDPYMQoTulEKzFGkJj
         vxtQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=MHJwPuaI7HXA0Tj6qN2JshNndh9aap1hWcD2/mybx0U=;
        b=cuLyX51hxu7hPpz39BimGjh/uvWSLiq6rnkC+BG/6rrIeYk6ryeCNdaamhBkFdJoBo
         YR0mcG+ezjNQ0xYrfogkncB8PAYyCEX9+YXGNVFqAnwsWX5uHRIM8fVo0ia2GPlLQYws
         r1T/F9PKdZp8eyVN3zDGT7/2imzy08Z/0gx6xONNRm6A1Cai010pV8MnR/C64Jzu8Zqp
         fGcM8K2rdhjWWH8WpsXXqf+mt120FPEkOulr77hHpPIv+8zqiTDMmSgfXuaxvi6CGI6y
         SXdFZkzMf9IOT7hz5xF04U5yIR6K05HHjd9sq0vPA3Knpui8+Z4WRxsLlW3RoT7YCdla
         VG2g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=i1Qf5Nyv;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MHJwPuaI7HXA0Tj6qN2JshNndh9aap1hWcD2/mybx0U=;
        b=smW0eUgypW8KTZQ/uBSPMLiIQDTP2R1t55GGQSfTEDOtrk2yBDfsYvReSfyniTTdq+
         7Pr9j12xjjae4gyU+QVERyAsdqQoGBnyekPSvzfTpKgD55zMZ/5k9t9/Kdlk6NAe0D8k
         PcyLJxTvLYpkt2nvyTSFr+qMvMGZJUwyjzBDOvMUdBmjBjdgRla6R9+Y6PiKD/TN70CQ
         Hu3MGiARXhHhTBBi3JXBJuSAN7a5IlK2ohQ+IrjN1EPZ+cuLFvQsDSw8sj99mIe/oZRq
         hOCcbO7Rbh/rHbEuoeiMXGABLpnhkRjY0yPdCB5ZCCU+zFwjof+sij+jVadAjYT2Emgd
         8o0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=MHJwPuaI7HXA0Tj6qN2JshNndh9aap1hWcD2/mybx0U=;
        b=Bo0+rtqTVUdcMMipL+VSvscIudKCuRvpFouV/eAgSeXyIJ/yZWsZvdB/V7DqcQaUV+
         Ft4onD3b4myBK9rzClBnYBxYVmBnnnmu6f2+AnMjrIVHT2lZMhpjTXF0+IxsVzOI1AUd
         qA4Q09sbttHw9/Dz/msPGXDL/Hsa5ctFjy3jjFfyLOe2t7Gsoil/0HAaiWiC/VpLvwtf
         oZkW9p3jQiUCWh/vhID2DFLI547dZ2MGjwEDgsnCpiJPzLFSSoixYoA6/RTe6yrKid70
         TdbOuTd1T1H01qXi9ddjD3BUBkaPkzzdjGnZx0tvl6IfkgZegw8tybknamjHyNPkOmov
         Txcg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5333GBNvpEbJIye26tTZ0pilIUWKk+ighxeRQ2Kn35eK+4B8PiKc
	A5bKywCbtZmnxRmnz4yrR8U=
X-Google-Smtp-Source: ABdhPJzdJUWOYF4XHosCrdnY0KcXl07V/F19rFRHefyDdZC3KolQeVHQnbSrXzsDtEvcmNWz1gsfqQ==
X-Received: by 2002:aa7:8702:0:b029:303:6c92:dc8e with SMTP id b2-20020aa787020000b02903036c92dc8emr12144113pfo.63.1624651683841;
        Fri, 25 Jun 2021 13:08:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:11d1:: with SMTP id gv17ls3437637pjb.1.canary-gmail;
 Fri, 25 Jun 2021 13:08:03 -0700 (PDT)
X-Received: by 2002:a17:90b:ecf:: with SMTP id gz15mr12548476pjb.131.1624651683311;
        Fri, 25 Jun 2021 13:08:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624651683; cv=none;
        d=google.com; s=arc-20160816;
        b=ETKcdUlJcBmrIZWoA1KBJZ6ZUirrPTK3F3wpT7vu/A3uY8prrnY8zm1ywx+9kgkeS2
         peb+DZwQZWtco/ibhsLfkxvUHgTJ/8R+7wjTFAiOm/nwWrSY7UeokKdWDsdCMnmrhhgv
         PJnKXMD5zwajbxJUB4nfKa2Z5Tjc5nRQ/koJZKipAPGJdyJXxDWsW/2CQi6elfPdGgjx
         BoAUKK3rgNSMiFI+qHJNr1naK7W6CTK5iI0Ut1Qqp2WTYYGLYwoKUg4UgkqOrKe/a3DW
         ZpSPuxplb6zvghNopAZyznFiN1ZdDuwIbsQ6NeSGvAk8YMXOs4c23Vif5IHE4EPALUNy
         aiIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=st0qw6d4LTdim7HyfGW8euGHVqaVu1Ne6XAil8H7SUg=;
        b=GlrAFdIShblI5z3HEeL1/y0Td+8lZ1D4SbfCA2myVQWNdNMxX85POzYrFGduP+3UU7
         VDc9ENf6RSL6cQ5N4hu6Pxx2UIIKTGB3m1iQX7Pzma0a6WQrVytgULZFEagRaYRNtcRx
         bsdguNke3AJRa+qSd2Syaql3Fux0uPmUkneDRmlauPBCL/RGGAT11xAjwccIZ2e7v4x8
         j9NgMCeY97hUj+tXaJHMMeZ0V/FpwtwJGO7a6zfpKVj7BxIylmhAfduTQ3gWtzwk9K+s
         DstJBkwJKqffR40drw6YjjHln9vMrx1TXSq/aa4ZZ0C7vQjomsCQHJagdjb8+1izH0bY
         Gv3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=i1Qf5Nyv;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z18si592911pfc.5.2021.06.25.13.08.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Jun 2021 13:08:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7A69761960;
	Fri, 25 Jun 2021 20:08:02 +0000 (UTC)
Date: Fri, 25 Jun 2021 13:08:00 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: "Geoffrey D. Bennett" <g@b4.vu>
Cc: alsa-devel@alsa-project.org, Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org, Takashi Iwai <tiwai@suse.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2] ALSA: usb-audio: scarlett2: Fix for loop increment in
 scarlett2_usb_get_config
Message-ID: <YNY3oF3RkbZRk2Ri@Ryzen-9-3900X.localdomain>
References: <s5heecql74j.wl-tiwai@suse.de>
 <20210625175418.2019892-1-nathan@kernel.org>
 <20210625184342.GA23780@m.b4.vu>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210625184342.GA23780@m.b4.vu>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=i1Qf5Nyv;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
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

On Sat, Jun 26, 2021 at 04:13:42AM +0930, Geoffrey D. Bennett wrote:
> On Fri, Jun 25, 2021 at 10:54:19AM -0700, Nathan Chancellor wrote:
> > Clang warns:
> > 
> > sound/usb/mixer_scarlett_gen2.c:1189:32: warning: expression result
> > unused [-Wunused-value]
> >                         for (i = 0; i < count; i++, (u16 *)buf++)
> >                                                     ^      ~~~~~
> > 1 warning generated.
> > 
> > It appears the intention was to cast the void pointer to a u16 pointer
> > so that the data could be iterated through like an array of u16 values.
> > However, the cast happens after the increment because a cast is an
> > rvalue, whereas the post-increment operator only works on lvalues, so
> > the loop does not iterate as expected. This is not a bug in practice
> > because count is not greater than one at the moment but this could
> > change in the future so this should be fixed.
> > 
> > Replace the cast with a temporary variable of the proper type, which is
> > less error prone and fixes the iteration. Do the same thing for the
> > 'u8 *' below this if block.
> > 
> > Fixes: ac34df733d2d ("ALSA: usb-audio: scarlett2: Update get_config to do endian conversion")
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1408
> > Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> > ---
> > 
> > v1 -> v2:
> > 
> > * Use temporary variables of proper type rather than casting, as
> >   requested by Takashi. I did not include Geoffrey's ack for this
> >   reason.
> > 
> > * Mention that there is not a bug at the moment per Geoffrey's comment.
> > 
> >  sound/usb/mixer_scarlett_gen2.c | 14 ++++++++++----
> >  1 file changed, 10 insertions(+), 4 deletions(-)
> > 
> > diff --git a/sound/usb/mixer_scarlett_gen2.c b/sound/usb/mixer_scarlett_gen2.c
> > index fcba682cd422..b13903bed330 100644
> > --- a/sound/usb/mixer_scarlett_gen2.c
> > +++ b/sound/usb/mixer_scarlett_gen2.c
> > @@ -1177,17 +1177,22 @@ static int scarlett2_usb_get_config(
> >  	const struct scarlett2_config *config_item =
> >  		&scarlett2_config_items[info->has_mixer][config_item_num];
> >  	int size, err, i;
> > +	u8 *buf_8;
> >  	u8 value;
> >  
> >  	/* For byte-sized parameters, retrieve directly into buf */
> >  	if (config_item->size >= 8) {
> > +		u16 *buf_16;
> > +
> 
> I would prefer that the u16 *buf_16 declaration above be removed from
> there...
> 
> >  		size = config_item->size / 8 * count;
> >  		err = scarlett2_usb_get(mixer, config_item->offset, buf, size);
> >  		if (err < 0)
> >  			return err;
> > -		if (size == 2)
> > -			for (i = 0; i < count; i++, (u16 *)buf++)
> > -				*(u16 *)buf = le16_to_cpu(*(__le16 *)buf);
> > +		if (size == 2) {
> > +			buf_16 = buf;
> 
> ...and combined with the assignment here, like: u16 *buf_16 = buf;

Thanks for pointing it out, I was not paying enough attention to realize
that the scope could be reduced. v3 sent with your Ack added, thank you
for taking a look in a quick manner!

Cheers,
Nathan

> Regardless:
> 
> Acked-by: Geoffrey D. Bennett <g@b4.vu>
> 
> And, thanks again!
> 
> > +			for (i = 0; i < count; i++, buf_16++)
> > +				*buf_16 = le16_to_cpu(*(__le16 *)buf_16);
> > +		}
> >  		return 0;
> >  	}
> >  
> > @@ -1197,8 +1202,9 @@ static int scarlett2_usb_get_config(
> >  		return err;
> >  
> >  	/* then unpack from value into buf[] */
> > +	buf_8 = buf;
> >  	for (i = 0; i < 8 && i < count; i++, value >>= 1)
> > -		*(u8 *)buf++ = value & 1;
> > +		*buf_8++ = value & 1;
> >  
> >  	return 0;
> >  }
> > 
> > base-commit: 0cbbeaf370221fc469c95945dd3c1198865c5fe4
> > -- 
> > 2.32.0.93.g670b81a890
> > 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YNY3oF3RkbZRk2Ri%40Ryzen-9-3900X.localdomain.
