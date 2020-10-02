Return-Path: <clang-built-linux+bncBDJNHL5JSEOBBBMM3L5QKGQEBUBNYFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id E39A4280C10
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Oct 2020 03:44:37 +0200 (CEST)
Received: by mail-lj1-x240.google.com with SMTP id s22sf89977ljp.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Oct 2020 18:44:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601603077; cv=pass;
        d=google.com; s=arc-20160816;
        b=s2pcee9ja52dgri1Petj6lknh4KPaIaqZRloHNRetn/dZIR/GW0+H4ywY/ZegJPHcP
         9+pSlDxZDFA5fWeEauER+p8nHAqW8iKXyKoaqBFVJHlNT2H+JVf2A5rcddipmoqIR8YW
         IAX4cNhnpUhXs9U+gyvtDg0I7zGnZ6xdncIXSsylb+ZTHoU/wXDHhKUg1W+2jBLrOJTd
         sQt48OHHJ/+Atif407TNp20JLKGtDxGRrJn90MXMfC1E7oSAI4y135ydIO+HuplA5WBW
         Jlz3iTfPr5NfVo42TtL0DXu2jJin9DsMyUtY4aDNF3C7vE1bBB49b7yxKRRYm+vhoIJe
         T2fQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=xwpX2M5tWPWwe9+Y0QjjqrJPfu93BDNdAcShBR4+3G0=;
        b=QrNtvebKK500Dhqk5E5JYumtzRjr8//3uMa24POpc3LWpeZehcJJe3uWNo52Xc74SQ
         dy58+mRjFPE9YlC+CC1fGbHRJ9fV+6dekEmGc70VLgfw58XBN7zDrNlKABQ+PR/EdY9F
         m1S1JU9JR0ZBPrf6r2nAyWXcwdXFxHVG52BfpzrgYnAg2t/RwOqlzpP/UakhQLT77VRd
         U+o+sOkgOH0PL0L8jh3p2KB5ixVYUpJUAHyDMCj7AuJdRecNvfu67+6TD34SZvTnuj1x
         8JwGqK0rGuO5LzyfYOevTfzps4GaM9EBh4FW+lZyglmJnWlftFvObt2YUtPQ/by6njF4
         KZDw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) smtp.mailfrom=andrew@lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xwpX2M5tWPWwe9+Y0QjjqrJPfu93BDNdAcShBR4+3G0=;
        b=B4aKmPPO3Do6A5rSuUQ82dn1dd95tfPzsZgywGYRPb4Sa36AReDEV2cCM2yMjKhp9A
         8Q6L+q3ua5AsB1/N51VLLg8O4qPrnbUCVvBAEylRPySMXbgMe8mAAKFkfjaIVNWtnzJi
         9RO+exw3eVmMy+t6nDwS5m/5VhsBmp3BVHDpA6SBu0RGx9qZ1Lj0Kpx+90xGvKEc6SkS
         hoVj3/35PFDENOdZCE+V6OnBFuIkqcHDQ02rI/iskoN45zMJZ+1Rw16c5bOYU8xm/A6K
         V/7lPttIuNdsO9gOf7O75GkX/DP2MA95HoGBn7nfpZEu4L3PwaZx1BNzAQ/E++fn4dN9
         5zMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xwpX2M5tWPWwe9+Y0QjjqrJPfu93BDNdAcShBR4+3G0=;
        b=jsC21Xg+ylM+m6nr+NsBlNZY+WUmQr8O7eroPpUnxa2lVAaBTk7vHlPvfAmMHt/a80
         5IJ1+UwRiTdew5S4By6FXftEsPwq64vUF+8+sRBCeDe7E/rqg1kq/f8rfyPP3icxSXlq
         EJKTbyhX+pibDTNEmNGbSXdKmARVD7SZMroJ9RT9BCqqyANcG13EjG2mc4dnAFuelTfp
         Jw9oCDitllcrpQNh6sdC5lthIbyj1Y6xPZUrV731DJmlmknyTHn2APYk45sVv9vcVO1N
         ajUVpmu7cik6BkkTe1ty6VSxjaV3yqkaAPrca1j4CfTJ0A3CWnuwW+Sc08wxL1LGQfTD
         ElgQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531HfkfDfgEQFPoJgsoLfyFN0sBCJPRLPi62alpcujOYcKy6v/nM
	VseFK8zfBFUvtrvqVDdakAs=
X-Google-Smtp-Source: ABdhPJySRI34YiAN5/JO1HFacnNwDX+RA/WUoyrlkTWLblwZ0WYK/IgwHXp0eoGDI4sRMGaxxigOKQ==
X-Received: by 2002:a2e:8e81:: with SMTP id z1mr16353ljk.379.1601603077452;
        Thu, 01 Oct 2020 18:44:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:c7c8:: with SMTP id x191ls51127lff.0.gmail; Thu, 01 Oct
 2020 18:44:36 -0700 (PDT)
X-Received: by 2002:a19:8446:: with SMTP id g67mr3264241lfd.87.1601603076276;
        Thu, 01 Oct 2020 18:44:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601603076; cv=none;
        d=google.com; s=arc-20160816;
        b=ONTw51I7kUm+XujxezPWluWHD404ij9izcokEfboIe6xpuMqHzOJksMAZj3tygAzw4
         jg1nKrCCrlZkhSCxVU0q/A/iE7owKIHIJ6NYs4Dh9oXF8Ycy/Y+nRAwgrTm6xZNFk1/V
         fvPM6zKZsnq2E85RCR1bSH75qaNMsQNLHKCYeivr/kqAkJ2rCCFi3+iVUQjLU8iv5tRu
         1/tNMNDx6441iqLrUdel7uTrYFqQcf90NZTLXUiSOlYDZqNzJPGAsVvhMsGEvwNcJM6x
         2M6NZuwTYlfaysWl1h3XMvuGjDaL6vVLvbGUgKrdjPtVtvigrF+1lzVFdI3g1koXXNIa
         ZVkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=QbJ/9sBh8GaDbAJVrNLoSQYEiJVjnsYmmZYQI9Du2ys=;
        b=CPR2IHzf3JwwChnFAREZ74pKkBvwSkfaq4Ve0N/WSE4GSBECNOcA1IVe/3KhD2YZb4
         Ib530K2yGJaK6721vs6vl56/vxjXyhjJ+8fYiq0D1+WPVJcGLhlXvuXEtR8eXiUTTxRL
         aNC6/LbAltap7QZSvQ8SIQs4OmLvtimi9s7LVHvCX8XaRYBZZXP49+r8ohgk4q0WctS9
         13VG6LfaAeHgG0kwrkHGJfahMuWNIGtpBlpMdjRQKZpYUT5uWrtp2VrVSHDbdeluKS9U
         KZkbmuRuh//GGE/C+AdfIvVLLS7HOrUerL94uXn44idl7ff3A4P3ubhGQoOqSY5gCsl9
         ZMmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) smtp.mailfrom=andrew@lunn.ch
Received: from vps0.lunn.ch (vps0.lunn.ch. [185.16.172.187])
        by gmr-mx.google.com with ESMTPS id z6si277lfe.8.2020.10.01.18.44.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2020 18:44:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) client-ip=185.16.172.187;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94)
	(envelope-from <andrew@lunn.ch>)
	id 1kOA7H-00H9Pv-O0; Fri, 02 Oct 2020 03:44:11 +0200
Date: Fri, 2 Oct 2020 03:44:11 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: netdev <netdev@vger.kernel.org>, David Miller <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Rohit Maheshwari <rohitm@chelsio.com>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH net-next v2 1/2] Makefile.extrawarn: Add symbol for W=1
 warnings for today
Message-ID: <20201002014411.GG4067422@lunn.ch>
References: <20201001011232.4050282-1-andrew@lunn.ch>
 <20201001011232.4050282-2-andrew@lunn.ch>
 <CAKwvOdnVC8F1=QT03W5Zh9pJdTxxNfRcqXeob5_b4CXycvG1+g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdnVC8F1=QT03W5Zh9pJdTxxNfRcqXeob5_b4CXycvG1+g@mail.gmail.com>
X-Original-Sender: andrew@lunn.ch
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted
 sender) smtp.mailfrom=andrew@lunn.ch
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

On Thu, Oct 01, 2020 at 04:09:43PM -0700, Nick Desaulniers wrote:
> On Wed, Sep 30, 2020 at 6:12 PM Andrew Lunn <andrew@lunn.ch> wrote:
> >
> > There is a movement to try to make more and more of /drivers W=1
> > clean. But it will only stay clean if new warnings are quickly
> > detected and fixed, ideally by the developer adding the new code.
> >
> > To allow subdirectories to sign up to being W=1 clean for a given
> > definition of W=1, export the current set of additional compile flags
> > using the symbol KBUILD_CFLAGS_W1_20200930. Subdirectory Makefiles can
> > then use:
> >
> > subdir-ccflags-y := $(KBUILD_CFLAGS_W1_20200930)
> >
> > To indicate they want to W=1 warnings as defined on 20200930.
> >
> > Additional warnings can be added to the W=1 definition. This will not
> > affect KBUILD_CFLAGS_W1_20200930 and hence no additional warnings will
> > start appearing unless W=1 is actually added to the command
> > line. Developers can then take their time to fix any new W=1 warnings,
> > and then update to the latest KBUILD_CFLAGS_W1_<DATESTAMP> symbol.
> 
> I'm not a fan of this approach.  Are DATESTAMP configs just going to
> keep being added? Is it going to complicate isolating the issue from a
> randconfig build?  If we want more things to build warning-free at
> W=1, then why don't we start moving warnings from W=1 into the
> default, until this is no W=1 left?  That way we're cutting down on
> the kernel's configuration combinatorial explosion, rather than adding
> to it?

Hi Nick

I don't see randconfig being an issue. driver/net/ethernet would
always be build W=1, by some stable definition of W=1. randconfig
would not enable or disable additional warnings. It to make it clear,
KBUILD_CFLAGS_W1_20200930 is not a Kconfig option you can select. It
is a Makefile constant, a list of warnings which define what W=1 means
on that specific day. See patch 1/2.

I see a few issues with moving individual warnings from W=1 to the
default:

One of the comments for v1 of this patchset is that we cannot
introduce new warnings in the build. The complete tree needs to clean
of a particularly warning, before it can be added to the default list.
But that is not how people are cleaning up code, nor how the
infrastructure is designed. Those doing the cleanup are not take the
first from the list, -Wextra and cleanup up the whole tree for that
one warnings. They are rather enabling W=1 on a subdirectory, and
cleanup up all warnings on that subdirectory. So using this approach,
in order to move a warning from W=1 to the default, we are going to
have to get the entire tree W=1 clean, and move them all the warnings
are once.

People generally don't care about the tree as a whole. They care about
their own corner. The idea of fixing one warning thought the whole
tree is 'slicing and dicing' the kernel the wrong way. As we have seen
with the recent work with W=1, the more natural way to slice/dice the
kernel is by subdirectories.

I do however understand the fear that we end up with lots of
KBUILD_CFLAGS_W1_<DATESTAMP> constants. So i looked at the git history
of script/Makefile.extrawarn. These are historically the symbols we
would have, if we started this idea 1/1/2018:

KBUILD_CFLAGS_W1_20200326    # CLANG only change
KBUILD_CFLAGS_W1_20190907
KBUILD_CFLAGS_W1_20190617    # CLANG only change
KBUILD_CFLAGS_W1_20190614    # CLANG only change
KBUILD_CFLAGS_W1_20190509
KBUILD_CFLAGS_W1_20180919
KBUILD_CFLAGS_W1_20180111

So not too many.

   Andrew

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201002014411.GG4067422%40lunn.ch.
