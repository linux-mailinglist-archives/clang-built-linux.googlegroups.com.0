Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBENFQ6EAMGQENJZI6MI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 77FD23D97E8
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 23:56:34 +0200 (CEST)
Received: by mail-yb1-xb37.google.com with SMTP id n192-20020a25dac90000b029054c59edf217sf4552392ybf.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 14:56:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627509393; cv=pass;
        d=google.com; s=arc-20160816;
        b=0KzVjSOcbZ9Azn9hPRSh2ThX1vqH9jsPi7hfOefL8ENEVR5oogDEBg4uPF3IdnK7Ox
         0IvMtRK/AurcaRNvQHMunPtugUlEey08//VA3iwbF6wbnPuP8+Cy/XT0dXis3LCpdNoe
         HDbLurIcTWqBAWw1Ed9DLRRu5wiBiboRmu3/GOpe0EABIlgqSdP1be/++Ljxh++ZjSSg
         4V0XrlcqN6vEV9YCF47vxLG45odwHJr3ey/rdi9liCMUCnQOZPQqRSL1QnuaTGsvtryg
         /Odf8k49n+dhDGRk7Bbi9bfQXNAooSkhNgY+oXOPggGyxTYYD53FP4LM8eFdpWX+Kktl
         pyLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:to:from:date:sender
         :dkim-signature;
        bh=HuVdzSsXq6eFTEBiymDO2aY4VukaiVSInU8HbFq7K7U=;
        b=tNqo+Wol8izrzVY6ifVEmlY4FOWs6hfelBIOYVO+DWyi+QgJgnlklwNflR3TW1uvjC
         UJNC/ONJ+UCiHV96xIVr7vLdVJdSeln9I5HDhlfQo3YWxsJSVDCHeysohf6W+7hCNhXI
         jkg8wx9/XON8wRuUY/O/ckIwNjRja3KQulxFLLcA6sLdeUVUqp+K6QoSqnTIDgKPMy5q
         l5bMlT0cL69XdMo+mIL7/rt+1uMYaCZGhqkL/In9asp4WilIPbar+eLk/Ly55u8Qmz6D
         NYUzEq4R+EW+3m2cEXXwr0izvt0dDblQ5Tp7hmFgKP0M2+62VFilfQEDmeCGuiQNSElY
         ahjw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=hOKYAGtG;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::635 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HuVdzSsXq6eFTEBiymDO2aY4VukaiVSInU8HbFq7K7U=;
        b=auY8/pFMZ1Q84dnokyecPwOyG7t0w8qb0s4JjYk/2bzCR4rM0Cott9U5hzYM+soe+G
         eRxGSGsc1P/+k3K61bDIM15EQPAjSW7JCXcR7TgIzg1e9vhpA685YKezFIz0IOeh/c10
         Rl61Uldi0kDmw1DWZzlZ1up+m0rJvxI58FGV2whi9F/Sv2tA3pgMwYfZZlD5wYhHNggs
         WrZAqFMutyM+R7jsnoqZXoUwRtg3zlbahvI+j0uU8s8L2Ne12OrU6SBK2axguH+K3cRG
         RD+/OxK7mKifdmlU3tenmNZW3+VEc6D2nGvB+tMuHJY4C/ZCXtph9vvv484YbU2EgmDL
         Idyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=HuVdzSsXq6eFTEBiymDO2aY4VukaiVSInU8HbFq7K7U=;
        b=CzEvycxUUmni2ifCSP9mqeMeAknUbqZGdxaIOqBUx9t8BRZcFHnPzUT5sXGf3zfdtO
         PYew8IUxtc5DOmmEudHBbsMm6B37f+TOwugkTXiXftdSloe+J/xIQtUYhLcxsn3hpHLA
         Zm/w7pNeOOIzUYWtcClZiD/MEp6AF+rgGX5S/6DJzTzpcsOdl4AvktbJ+Y/cPW8G7sEe
         ffAnHMg0IOSyOYiCwWW3AHgrWSvieKkqsXokS++zrjyrQCXMdEZAWP2Ho1VQzKojwdIQ
         AU3xlM3twobn+rcCVykpR/2ASWMgUYJR8rsPdIyrmt54HAaE0YYf5iEQlYp9p8bM/5Dy
         yZ7w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530o1Sh60fPrsSmJeJ6FqLTdQvAHqs1T4byZtKRfQLBk9yeR9gxg
	vK1xE6CrxuBfEGQV6j+P8BI=
X-Google-Smtp-Source: ABdhPJybrcMKdX99oK3oiU3eevGIK9aFqMOAerspuq/pymyDyZVWRDoV+wggoaP79/JpNGdQKusNKA==
X-Received: by 2002:a25:8746:: with SMTP id e6mr2450673ybn.76.1627509393554;
        Wed, 28 Jul 2021 14:56:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:7bc7:: with SMTP id w190ls2114241ybc.2.gmail; Wed, 28
 Jul 2021 14:56:33 -0700 (PDT)
X-Received: by 2002:a25:3c7:: with SMTP id 190mr2437622ybd.135.1627509393107;
        Wed, 28 Jul 2021 14:56:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627509393; cv=none;
        d=google.com; s=arc-20160816;
        b=kerbjGEgBU68GOd2ROInTj2NFwAAh6LgZNfTr6Ry1AbddT4EgvJGPoh4TGrXR64cuZ
         x/DiP4OdZFAir0lJA8GrKTkY0DBdMQbuoFUC/nAAeFcNa6gRebKv2ggFnOxV4ob26pBN
         lw5eo6D5sjdoPIAWc0yYDM+1hiwwQyhqWTEcvuallXVcgwp7EbgwVRwAmijEeWeMNXQ/
         XaVqro85itYkM7UXmI+tibWbR3NiQ09y29dHzHfcV9DluDdsOaDbHQ/qgqiv9w+9VlSh
         yCdr2aPDwQygIFgPPBYkjr5aoFT1AZmYGEAkBC6O0YchsS0nHpHxFhbPaqg8zHZIL7B4
         kA/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:dkim-signature;
        bh=HZwmvCaIsPtNlFau8xRfO0wSxpkKiZeYhRsp0hhs6yw=;
        b=VAu2GmCzyknvs8KM7td0/dfxj/2yWaaMnXrR7ePw1/jRZ7AfYxYsNHR7iRA6gM6W/C
         4KRNTKoOsVGi1J6v57IVU4UUNGX9AZBZjAE7KDiIqvon60IiJdC2Qz6dVvXs5eRGxlqq
         bx0JDeAVK83e7jBlgE1WExg1nEz0c6Hev8iqbteMhztLQhd8gTXbsgx/Zzdifko6KJcU
         CURZcXaHqSuaBwsFvpGSOg65375EFZXVuk90GIZEw37mOxKkPzfq43pyHxBYIfVRA+9f
         Xj6v4Yd/mVVYj8zoHpkIq4WAistvHN1unl/rUlbFV9TrSwC39dS4CaFnDhaU9kCZMo4e
         D5Zg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=hOKYAGtG;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::635 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com. [2607:f8b0:4864:20::635])
        by gmr-mx.google.com with ESMTPS id q62si75861ybc.4.2021.07.28.14.56.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jul 2021 14:56:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::635 as permitted sender) client-ip=2607:f8b0:4864:20::635;
Received: by mail-pl1-x635.google.com with SMTP id f13so4446490plj.2
        for <clang-built-linux@googlegroups.com>; Wed, 28 Jul 2021 14:56:33 -0700 (PDT)
X-Received: by 2002:a17:90a:44:: with SMTP id 4mr1792767pjb.130.1627509392397;
        Wed, 28 Jul 2021 14:56:32 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id k8sm947353pgr.91.2021.07.28.14.56.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jul 2021 14:56:31 -0700 (PDT)
Date: Wed, 28 Jul 2021 14:56:31 -0700
From: Kees Cook <keescook@chromium.org>
To: dsterba@suse.cz, linux-hardening@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev, linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 47/64] btrfs: Use memset_after() to clear end of struct
Message-ID: <202107281455.2A0753F5@keescook>
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-48-keescook@chromium.org>
 <20210728094215.GX5047@twin.jikos.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210728094215.GX5047@twin.jikos.cz>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=hOKYAGtG;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::635
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

On Wed, Jul 28, 2021 at 11:42:15AM +0200, David Sterba wrote:
> On Tue, Jul 27, 2021 at 01:58:38PM -0700, Kees Cook wrote:
> > In preparation for FORTIFY_SOURCE performing compile-time and run-time
> > field bounds checking for memset(), avoid intentionally writing across
> > neighboring fields.
> > 
> > Use memset_after() so memset() doesn't get confused about writing
> > beyond the destination member that is intended to be the starting point
> > of zeroing through the end of the struct.
> > 
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> > ---
> >  fs/btrfs/root-tree.c | 5 +----
> >  1 file changed, 1 insertion(+), 4 deletions(-)
> > 
> > diff --git a/fs/btrfs/root-tree.c b/fs/btrfs/root-tree.c
> > index 702dc5441f03..ec9e78f65fca 100644
> > --- a/fs/btrfs/root-tree.c
> > +++ b/fs/btrfs/root-tree.c
> > @@ -39,10 +39,7 @@ static void btrfs_read_root_item(struct extent_buffer *eb, int slot,
> >  		need_reset = 1;
> >  	}
> >  	if (need_reset) {
> > -		memset(&item->generation_v2, 0,
> > -			sizeof(*item) - offsetof(struct btrfs_root_item,
> > -					generation_v2));
> > -
> 
> Please add
> 		/* Clear all members from generation_v2 onwards */
> 
> > +		memset_after(item, 0, level);

Perhaps there should be another helper memset_starting()? That would
make these cases a bit more self-documenting.

+		memset_starting(item, 0, generation_v2);

> >  		generate_random_guid(item->uuid);
> 
> Acked-by: David Sterba <dsterba@suse.com>

What do you think?

-Kees

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202107281455.2A0753F5%40keescook.
