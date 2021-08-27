Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBP4OUSEQMGQEWYNFNHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BDBF3F9BCF
	for <lists+clang-built-linux@lfdr.de>; Fri, 27 Aug 2021 17:39:54 +0200 (CEST)
Received: by mail-qk1-x740.google.com with SMTP id c27-20020a05620a165b00b003d3817c7c23sf1713546qko.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 27 Aug 2021 08:39:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630078783; cv=pass;
        d=google.com; s=arc-20160816;
        b=xDG9ZJmhVYaDQUeMgFmfqY7+j20AnwFfzODTBpp2gkH/RjCVMCWoFy+EWexPozBz2B
         RonV8KiYppNSCHKykZNHe5+cFhJto54QhygCz33x70ouUn7nVNqamGihqzb3McblLai5
         MrSJcaYuGEHSeM7+ODEE0vg5AyzIP5CPT6tVrKjqmxQHztIFOVu+oZXkIV8OqvHT4ddR
         whmY6xCF2ex7E9nnswlXAPJ9eHB9orZFDb688nsF8vDZPyJH7hqF1rHKcYMjWEuovfO9
         OU7Ipg3+XcplqcDP1WaMj/AmZDC5SWUbLEamlrAbhtkdnpDnyxG1AKUT1q0OBCeniZrC
         JaLw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ggFUbkZt5UHJbHJ8BiyXAp+Dbq1g9HvKF1JQuUHL2i4=;
        b=AHt3OY8C37/PY0dXOJS1ziw74Vygyvea8PSrjsDYwF8OeKsXYuDdISXEmayZGOxKeR
         WjProRw02BPK6kXZiFzKMBc5w16Yh7oDTH23pcPwF6tF0mDqAHJtYq6xMunTRKHL9qWc
         vPdmjsTdTIsB4OLgw3A1auoDvClypvVjj0dUwRhpjfmOyiKd+/fpMyUVZMJ8U+Mm4jDk
         0LXxyrrT2frYRCJgZWiw9p0nOAZvI3RVSa09+xZEkH36zAmVb9V5+kMw60qjFfc/k9Le
         c0+1iMe4IWZPhjcm+K2GDLXAWhg6aFWbEW6nhD3Exu/0C+wMH/MGMvo4obNNF+Eq4c6c
         AjUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=ZAMkIey4;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ggFUbkZt5UHJbHJ8BiyXAp+Dbq1g9HvKF1JQuUHL2i4=;
        b=jfIz2BsCVNEmfYj2ii2raBpIj6+RxhxD3yn5Om9qtQY+n7sC75yVohQ+s9waepBEQH
         iqFd+oioxfKaAE05sRcsCbQPH2KileRH27Y7xz+r2fab9KBLlJVNuBcBo/vx55Xze3gy
         koMjv35gTCYATleznnu3lAiJytOwk2m/vR8ta5bk6+IUSqO/9/f0wi3XTsRR2Zf8OiEE
         bZWVVHFAkIUzGzsPiQVvLoxRJz4GzRyCysgrjPcU7Leywc2AG+UpjAoamyZNMy2lLaH6
         WwceICqkIas+DGBT91LMMlW4CJZQNOVNtfrReduW5r90l75JGlbNJ42JAY5I6juNkvb9
         zKLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ggFUbkZt5UHJbHJ8BiyXAp+Dbq1g9HvKF1JQuUHL2i4=;
        b=dM/BVzC6LMa5kBEr5PEWetISlAXEWWUWP9/Nj01eVDSjon7RaoqCPEs2xRrx9sxDBT
         Zl7ZjaqdBc/zc8EzJwH2Vf47WOpr1wdUu7duXdYtYYtPb2rKifi7evFTS/haPZhu7FwL
         zMh5Arb5di12kQrgTvXPBrzEyaqfR71uPw6qfpF2PlHVZnlQZeUSWD5YDx/cOO9GMNlE
         Qt25n5zQdkWgtu8gBaGIxnXvbkf7G3OKD/iRbaKEKUJWboQFk3frTS8jo40R+9UD82OV
         GNCkSwg31strgdKlRz/ODjx5xBURaljvSerJbNWusBdbOLZhOsVqePDieZbqHkbBjkWQ
         D1aA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Ss6XGrEQDQ2xCBdPCrI9eqGEi+Ys/SYqnVFMxeLMUyhw+iy7D
	ncq1NRgv4euRJpuzrFXs+rA=
X-Google-Smtp-Source: ABdhPJyaUAAS1/ItqHoMZDR09EtVA/Y1nSE1no/4SV1IqeT2EVHX3bjieDIIjFRziEoh36ALYOhWRw==
X-Received: by 2002:a37:8407:: with SMTP id g7mr9713366qkd.123.1630078783153;
        Fri, 27 Aug 2021 08:39:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:50c6:: with SMTP id e6ls2951694qvq.2.gmail; Fri, 27 Aug
 2021 08:39:42 -0700 (PDT)
X-Received: by 2002:a05:6214:21cc:: with SMTP id d12mr10089051qvh.22.1630078782701;
        Fri, 27 Aug 2021 08:39:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630078782; cv=none;
        d=google.com; s=arc-20160816;
        b=C47OpJh4c78fbcxm3KP3jcX+486r4XhgzdWbgYuiF3g8mprgKKww7TANwPWmvCrYYU
         Y02Bo8csvagTyqbhOoFVjJ0xTn8UmUbk2VhspC83/k5U+8IXnh9QHwSQ6EQnNV1tRy5B
         tBNCvYJKQK9ZYN0fRvovjZnIAkn1OVn24Ymrhji9851GgbOWJ7lvdXKC/viXvSRh9YAT
         wlR+1z25Z1HmmKO8P2lb1J7ON43PFuRFwj0Y4iSkLGHiWjQiwc9KSMGCTNHC2NiLogqr
         D3B+SlzowTgISV1ueK81IaDl5w8o/t4fbOEkHWVQyzuvtWq/DcDn5aj+VVNozQ0bRW7r
         J/8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ncSvdn48KwHrQzYtexzGkXlloweM6fpLnKP3mFqE2B8=;
        b=YpfM00lj3e9i2nEG5ikJRsYzxQ/cw8a2fF5/G4oOtTHM0ft/8vCf168Kez9QAgmiMU
         Hs99GP+Qoj1MdICxWx2oLZZjfqla4cNh8adIb7Qs4jFFyWblzgCy98iJi7A/p8muaOSL
         QV2/+QhiWoFm/vGyDDnTXCuRGWOBULCnWkcl94j+9URUL9d+H7brxVYdsxf9iYQQlsaU
         idCSu1zN8SUN2FE8m59cIPxAzuvteUQ/2XqMMLbzUGUqZyI7n1PtmZaD9UqW2qspuYjk
         Up1K3BsEZwORJUFW/XdcwIXoyLUY3IuR8AjxIsUjIHz3znZ9CgcMiD1jnqlL8EwsgIgU
         OaUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=ZAMkIey4;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com. [2607:f8b0:4864:20::102b])
        by gmr-mx.google.com with ESMTPS id n2si570572qkg.5.2021.08.27.08.39.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Aug 2021 08:39:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102b as permitted sender) client-ip=2607:f8b0:4864:20::102b;
Received: by mail-pj1-x102b.google.com with SMTP id f11-20020a17090aa78b00b0018e98a7cddaso5060080pjq.4
        for <clang-built-linux@googlegroups.com>; Fri, 27 Aug 2021 08:39:42 -0700 (PDT)
X-Received: by 2002:a17:90b:1bc8:: with SMTP id oa8mr11096998pjb.25.1630078781831;
        Fri, 27 Aug 2021 08:39:41 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id f5sm6532402pfn.134.2021.08.27.08.39.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Aug 2021 08:39:41 -0700 (PDT)
Date: Fri, 27 Aug 2021 08:39:40 -0700
From: Kees Cook <keescook@chromium.org>
To: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
Cc: linux-kernel@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	clang-built-linux@googlegroups.com, linux-hardening@vger.kernel.org
Subject: Re: [PATCH v2 1/5] stddef: Add flexible array union helper
Message-ID: <202108270838.10695297AD@keescook>
References: <20210826050458.1540622-1-keescook@chromium.org>
 <20210826050458.1540622-1-keescook@chromium.org>
 <20210827092532.908506-1-mailhol.vincent@wanadoo.fr>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210827092532.908506-1-mailhol.vincent@wanadoo.fr>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=ZAMkIey4;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102b
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Fri, Aug 27, 2021 at 06:25:32PM +0900, Vincent Mailhol wrote:
> Kees Cook <keescook@chromium.org> writes:
> > Many places in the kernel want to use a flexible array in a union. This
> > is especially common when wanting several different typed trailing
> > flexible arrays. Since GCC and Clang don't (on the surface) allow this,
> > such structs have traditionally used combinations of zero-element arrays
> > instead. This is usually in the form:
> > 
> > struct thing {
> > 	...
> > 	struct type1 foo[0];
> > 	struct type2 bar[];
> > };
> 
> At first read, I found the description confusing (and even thought
> that there was a copy/paste issue). The subject and the first sentence
> is about "flexible arrays in a *union*". Then suddenly, the topic
> shifts to *structs*.
> 
> After reading at the code, it is clear that this work for both:
>   - unions with a flexible array.
>   - structures with different typed trailing flexible arrays.
> 
> The subject and the description could be updated to clarify that this
> macro can be used for both unions and structs.
> 
> N.B. this comment only applies to the commit message, the kerneldoc
> part is clear.

Yeah, I see now how this doesn't read well. I've rewritten this to
describe the problem better. Thanks! I will send a v3.

-Kees

> 
> > This causes problems with size checks against such zero-element arrays
> > (for example with -Warray-bounds and -Wzero-length-bounds), so they must
> > all be converted to "real" flexible arrays, avoiding warnings like this:
> > 
> > fs/hpfs/anode.c: In function 'hpfs_add_sector_to_btree':
> > fs/hpfs/anode.c:209:27: warning: array subscript 0 is outside the bounds of an interior zero-length array 'struct bplus_internal_node[0]' [-Wzero-length-bounds]
> >   209 |    anode->btree.u.internal[0].down = cpu_to_le32(a);
> >       |    ~~~~~~~~~~~~~~~~~~~~~~~^~~
> > In file included from fs/hpfs/hpfs_fn.h:26,
> >                  from fs/hpfs/anode.c:10:
> > fs/hpfs/hpfs.h:412:32: note: while referencing 'internal'
> >   412 |     struct bplus_internal_node internal[0]; /* (internal) 2-word entries giving
> >       |                                ^~~~~~~~
> > 
> > drivers/net/can/usb/etas_es58x/es58x_fd.c: In function 'es58x_fd_tx_can_msg':
> > drivers/net/can/usb/etas_es58x/es58x_fd.c:360:35: warning: array subscript 65535 is outside the bounds of an interior zero-length array 'u8[0]' {aka 'unsigned char[]'} [-Wzero-length-bounds]
> >   360 |  tx_can_msg = (typeof(tx_can_msg))&es58x_fd_urb_cmd->raw_msg[msg_len];
> >       |                                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > In file included from drivers/net/can/usb/etas_es58x/es58x_core.h:22,
> >                  from drivers/net/can/usb/etas_es58x/es58x_fd.c:17:
> > drivers/net/can/usb/etas_es58x/es58x_fd.h:231:6: note: while referencing 'raw_msg'
> >   231 |   u8 raw_msg[0];
> >       |      ^~~~~~~
> > 
> > Introduce DECLARE_FLEX_ARRAY() in support of flexible arrays in unions.
> 
> ... and structures.
> 
> > It is entirely possible to have a flexible array in a union:
> 
> It is entirely possible to have one or several flexible arrays in a
> structure or a union:
> 
> > it just has to
> > be in a struct. And since it cannot be alone in a struct, such a struct
> > must have at least 1 other named member but that member can be zero sized.
> > 
> > As with struct_group(), this is needed in UAPI headers as well, so
> > implement the core there, with non-UAPI wrapper.
> > 
> > Additionally update kernel-doc to understand its existence.
> > 
> > https://github.com/KSPP/linux/issues/137
> > 
> > Cc: Arnd Bergmann <arnd@arndb.de>
> > Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> > ---
> >  include/linux/stddef.h      | 13 +++++++++++++
> >  include/uapi/linux/stddef.h | 16 ++++++++++++++++
> >  scripts/kernel-doc          |  2 ++
> >  3 files changed, 31 insertions(+)
> > 
> > diff --git a/include/linux/stddef.h b/include/linux/stddef.h
> > index 8b103a53b000..ca507bd5f808 100644
> > --- a/include/linux/stddef.h
> > +++ b/include/linux/stddef.h
> > @@ -84,4 +84,17 @@ enum {
> >  #define struct_group_tagged(TAG, NAME, MEMBERS...) \
> >  	__struct_group(TAG, NAME, /* no attrs */, MEMBERS)
> >  
> > +/**
> > + * DECLARE_FLEX_ARRAY() - Declare a flexible array usable in a union
> > + *
> > + * @TYPE: The type of each flexible array element
> > + * @NAME: The name of the flexible array member
> > + *
> > + * In order to have a flexible array member in a union or alone in a
> > + * struct, it needs to be wrapped in an anonymous struct with at least 1
> > + * named member, but that member can be empty.
> > + */
> > +#define DECLARE_FLEX_ARRAY(TYPE, NAME) \
> > +	__DECLARE_FLEX_ARRAY(TYPE, NAME)
> > +
> >  #endif
> > diff --git a/include/uapi/linux/stddef.h b/include/uapi/linux/stddef.h
> > index 610204f7c275..3021ea25a284 100644
> > --- a/include/uapi/linux/stddef.h
> > +++ b/include/uapi/linux/stddef.h
> > @@ -25,3 +25,19 @@
> >  		struct { MEMBERS } ATTRS; \
> >  		struct TAG { MEMBERS } ATTRS NAME; \
> >  	}
> > +
> > +/**
> > + * __DECLARE_FLEX_ARRAY() - Declare a flexible array usable in a union
> > + *
> > + * @TYPE: The type of each flexible array element
> > + * @NAME: The name of the flexible array member
> > + *
> > + * In order to have a flexible array member in a union or alone in a
> > + * struct, it needs to be wrapped in an anonymous struct with at least 1
> > + * named member, but that member can be empty.
> > + */
> > +#define __DECLARE_FLEX_ARRAY(TYPE, NAME)	\
> > +	struct { \
> > +		struct { } __empty_ ## NAME; \
> > +		TYPE NAME[]; \
> > +	}
> > diff --git a/scripts/kernel-doc b/scripts/kernel-doc
> > index d9715efbe0b7..65088b512d14 100755
> > --- a/scripts/kernel-doc
> > +++ b/scripts/kernel-doc
> > @@ -1263,6 +1263,8 @@ sub dump_struct($$) {
> >  	$members =~ s/DECLARE_KFIFO\s*\($args,\s*$args,\s*$args\)/$2 \*$1/gos;
> >  	# replace DECLARE_KFIFO_PTR
> >  	$members =~ s/DECLARE_KFIFO_PTR\s*\($args,\s*$args\)/$2 \*$1/gos;
> > +	# replace DECLARE_FLEX_ARRAY
> > +	$members =~ s/(?:__)?DECLARE_FLEX_ARRAY\s*\($args,\s*$args\)/$1 $2\[\]/gos;
> >  	my $declaration = $members;
> >  
> >  	# Split nested struct/union elements as newer ones
> > -- 
> > 2.30.2
> > 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108270838.10695297AD%40keescook.
