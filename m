Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBNWXTCCQMGQEEDJPYYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x340.google.com (mail-wm1-x340.google.com [IPv6:2a00:1450:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id AE37C38A144
	for <lists+clang-built-linux@lfdr.de>; Thu, 20 May 2021 11:28:22 +0200 (CEST)
Received: by mail-wm1-x340.google.com with SMTP id h20-20020a05600c4154b029017cb077d60dsf273876wmm.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 May 2021 02:28:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621502902; cv=pass;
        d=google.com; s=arc-20160816;
        b=KJjicNT74ti6eK25btfFClFP/ezMNdMeHQYTO6h4KzWsF36Q/4IX2pNeT3bOsB65dp
         z6MVxqGgc6xVyeLV/ZQE0sNGbTk6PZJVzQIkd4IZC+scgwwu8oU3F+9wJX/20vkrctf4
         1UKKEsyMXaMWj6h4QieXvpWgM7pWnqhSF/GyrD3M26KfMyFQ/DTv3YT1xJLzAEnuzsYQ
         wXmFL+mlmjMRyJ+giFg43vE4ea340mYOkbG4GWQxfVmk/kemw2C+bCERX35uW46VH2IT
         mwQWcEseNaPJItf7rc0Ipl2cM+ufUSPA/I+gBdJfPzBUJCySoXpkKXzN+bcNU7BNmOyW
         XIvw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=kwGn2Ehel0Nc063fr0gXHD8SSH/NFKWI3ncD7BojPdc=;
        b=1JoLZcl593Q2WNlcuJ1Wii6L3hHQlpRs58tUmWA5pzMbTBOKDuY6WfOje76JHTAVR1
         u73ttSQ2JpFjLi1vNWaTfg/OivYkcH/Uy7/MplWK4CvaeSu15pydpvz4b4USEC2c6T+c
         BUwz6XwLEGgYKCMAkpXyrYFaYQB+gklvmD1444cxr9JENHP6OkoY+1iA0nF3N9kb3f8y
         i8CcA+Mjkzgsdp8au+IoZRPg4Soy6S+kr5LiU93pMMAVGN1QbBqY3Ic9GbvfRrcF5DPm
         hdHX6r5szeh6w8xu62H12LB2k/0Udau9aTt5TAaFCOC/64Hb33WIKzNyhAxVPByp2M3G
         btoA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.73 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kwGn2Ehel0Nc063fr0gXHD8SSH/NFKWI3ncD7BojPdc=;
        b=fDiHVirYWekfSOTVqH3A9rpvRgWufAlwqLkztRauLFRAmjdspp/OjYr8laItapnaql
         sBQvWXBlxbGz02AhjDmvoz732BvmBz+LqljibgHQLqJO46OAvDecMb25eI0IMSAofOfS
         R4e7ErQsRj/tKoy7UNyXc/370LJa8nlKIJQq4yZRViB1NnL0kWBBNA8YKRSG/ztaplVM
         4NiPMMn2LdKrefp13TlZ6fo7pE/yU7eNm3oP0B0NElbkTSvpDZYoLArBcCj8ZFQQYkV9
         XjZ6gpvBKjyptaVwxlSyHXnDqVAAPjxUX9qLNkXbbjKbJtJ4rfiKBEXw/Yvbrg4JBRcV
         AJlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kwGn2Ehel0Nc063fr0gXHD8SSH/NFKWI3ncD7BojPdc=;
        b=rQgdUWMB6QYAUmM1XSA3eSOl3XjhXfREusZkNgwaj7rADFK1YPaXLUk1Sq+oAV90Ze
         BJtTTWmqLqEW6CsmnBLeQkD62NEGDuEyu0nkq7hG1GQprwkEWeCv0pg8wHJ9j2q8t2Xe
         MB9wi2xFqOdetSgAgwiew/u+D4AXKVW3ux6zVHA+Mhj43nLDVeo/1De+Jw01EzzXhrYF
         PL5hE6584zo34unFDo1kfcUywtyH80HyROI7X5/qsaHkAtRZgb/fLqK8VI6Kp93ESZni
         nwxoAm2ZQqHAqCUCxE5AL+2n+YoIiOBHqTqerXNkR1Gm1hP8IhG6Zkw3OiR/LZhzoTo5
         3yXA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532UzXUUhFsyJfEzgAN0wwnv4LZ018DL+mhyDiYHKXCoVPn9dMqW
	GHkdhBP9YN5Ey8Aeo/03vns=
X-Google-Smtp-Source: ABdhPJxshY7a5IE61IVM/gU27EypBLZqs5uVJDZAbosGxnbb+o6DmEPVoyvHmCMhbhMJut3Xo6snkA==
X-Received: by 2002:a7b:c93a:: with SMTP id h26mr3062039wml.141.1621502902416;
        Thu, 20 May 2021 02:28:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6000:2a8:: with SMTP id l8ls922577wry.1.gmail; Thu, 20
 May 2021 02:28:21 -0700 (PDT)
X-Received: by 2002:a05:6000:1ac7:: with SMTP id i7mr3384588wry.380.1621502901576;
        Thu, 20 May 2021 02:28:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621502901; cv=none;
        d=google.com; s=arc-20160816;
        b=FfI+ShjPOD/5CK/CTYNWDYj7Tq5CJ6hlTyO0qyCGpxUg6RRoDv5r7ATGBNb8u0CT5O
         xZQYSH+usgYoxtkT1Sg5otw4c8jwUemc4E/XR3tJV5NeUts4G4n/Q0BXVz9WAuDDAXAw
         3cR41DSjcc/KRMt0WKd2sipH2MtWM7p697RIILVgmZGDlQLl2ppVvVbO25BomoZ4nSjj
         doW0WXoJGcB83DroZ0q5czaIGgT1RrNDIinloaKfzq+36KWd2SX6m51NuqK080NYD+dr
         tYhNA7XNQ4h7EkAD10D3yPMpGrhKHN8ema/Pevr91/wKWGNNZiWGH5ZQtqcDLpPN3YSn
         E8NA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=Uf3wqlxBuKnsAcjFXI1jy4GrFcdcI6tgTordW60OYbk=;
        b=j5Jk0iYbkIWTdO/sl9+YHQWMw/oZuWB8t+iiba8oAZD8hgecVVdMbyMCasRi4cdcga
         p7upomWbdBbBNsBzqkUi1ZOw+wR9KE/FWJHP6oRbpedf5ZsTz435FfuZFAbkiKPaCqlI
         Mwds5XAfWW9ci9PdsYEaiBqgJzLyi1UnD8ZCi6awcjoRvhVd5j6VP73IURHflo7B11Nw
         mxqYsQ+iNHqNbKBD23ADfSgG7UvWI8yQATpL+de6yOWiD/3tADKaqhmIYeb1inB/LeKq
         Tsaant6P4NhBv+hZxDN6nia/2uDqqeHkYCg8LhBPRthu/2RXlnh4hXU5ycfQjLy4Ljzh
         BXHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.73 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [217.72.192.73])
        by gmr-mx.google.com with ESMTPS id w16si104601wmk.2.2021.05.20.02.28.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 May 2021 02:28:21 -0700 (PDT)
Received-SPF: neutral (google.com: 217.72.192.73 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=217.72.192.73;
Received: from mail-wr1-f48.google.com ([209.85.221.48]) by
 mrelayeu.kundenserver.de (mreue107 [213.165.67.113]) with ESMTPSA (Nemesis)
 id 1MhToz-1lEjnq0Z07-00edab for <clang-built-linux@googlegroups.com>; Thu, 20
 May 2021 11:28:21 +0200
Received: by mail-wr1-f48.google.com with SMTP id a4so16941482wrr.2
        for <clang-built-linux@googlegroups.com>; Thu, 20 May 2021 02:28:21 -0700 (PDT)
X-Received: by 2002:a05:6000:1b0b:: with SMTP id f11mr3311175wrz.165.1621502900841;
 Thu, 20 May 2021 02:28:20 -0700 (PDT)
MIME-Version: 1.0
References: <202105200357.eXI65Gfu-lkp@intel.com> <CAK8P3a2j61ouv8h-rWj7zPzjZ8Ok7GtQpyT5NaiYGxwxWHfwAw@mail.gmail.com>
 <e65bc9b7-13ef-0e83-1ec5-0287d5875d2c@intel.com>
In-Reply-To: <e65bc9b7-13ef-0e83-1ec5-0287d5875d2c@intel.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 20 May 2021 11:27:06 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3hc67Ks_j8cXokOQBQBEJfMbrDLHfDTXcPFYQfxga=ag@mail.gmail.com>
Message-ID: <CAK8P3a3hc67Ks_j8cXokOQBQBEJfMbrDLHfDTXcPFYQfxga=ag@mail.gmail.com>
Subject: Re: [linux-stable-rc:linux-5.10.y 3189/5262] drivers/usb/dwc2/hcd.c:3835:6:
 warning: stack frame size of 1032 bytes in function 'dwc2_hcd_dump_state'
To: Rong Chen <rong.a.chen@intel.com>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Nathan Chancellor <nathan@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Andrew Morton <akpm@linux-foundation.org>, 
	Linux Memory Management List <linux-mm@kvack.org>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:cJb5L7iPh8Jud7eEoovmS/WzB1ULdBwmFmOGAvVgZ/LSrxEzkXc
 eGctqJg90c8ThxeHSTuKofcYolRRLHbqwwq0CEUvucFpG8OhACQzfmE/PlNUH2T5RtQ7vOS
 5O6OJNZ77d0Ovun1/jn2uGTz04x7YwbeG4qMeMXhBJoBlGWjSH2gWT9X35wBpRSLTE63YC1
 XDvLwGaKsHcQW22trKZpg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Fm/BByRq0sk=:h3k9/Y2GfJ9mUMt8ez+LXy
 citv6yY6zoWklteypGSvkaTzrp1XduEfV+90iQSkF9jRAetq5WgiRx7s+0XcnCHQfQlqdtljU
 BG+KCBzotd6+OiAKLDOsLllpQkLD3hjABsrjQ7etew48p6GmbtwVXgkFhkihZF7ead27tFzFi
 ZcQp6ZqgroFda5cGG6slUn2KPrPt8+diIdNQMY2w/dd7gggdPUwexeNj0VV/2IEfc0tS2FNcS
 Lx44D+W+tEL4c5HlinnWzefhdI/cFTrYqxEbwNSoTFbTfu/ukQc5hsPOdzw3A+Vwa1BvpX/ur
 m6Q9coTVrl37g8s/rh9I9mj7PvfNkZIqoAj4uay16jzmfvgGacbW2esdqNhRZ/Q+lWuvuOaZY
 0crwyF2NjRua8LBQrf+jIv8PKZ7ezp4dosC9gbLdKXFm7pwVNcF43Pni9E0gR3aLF5EASBzPk
 OstMqwIPRzQ8Wz1/zOLZP37JOZlwsrf9qlOeFvEfGmEEVXXzh/zBmWRlwmZnDAAxqpuhy3pl6
 tG08CJswspcpUlRewi2hXs=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 217.72.192.73 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

On Thu, May 20, 2021 at 11:22 AM Rong Chen <rong.a.chen@intel.com> wrote:
> On 5/20/21 4:28 AM, Arnd Bergmann wrote:
> > On Wed, May 19, 2021 at 9:48 PM kernel test robot <lkp@intel.com> wrote:
> >> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-5.10.y
> >> head:   689e89aee55c565fe90fcdf8a7e53f2f976c5946
> >> commit: 5f2f616343b1d62d26f24316fbfc107ecf0983a9 [3189/5262] linux/compiler-clang.h: define HAVE_BUILTIN_BSWAP*
> >> config: mips-randconfig-r015-20210519 (attached as .config)
> >> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 8e93d10633d751a3e9169bf9fa68326925ffa097)
> >> reproduce (this is a W=1 build):
> >>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >>          chmod +x ~/bin/make.cross
> >>          # install mips cross compiling tool for clang build
> >>          # apt-get install binutils-mips-linux-gnu
> >>          # https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git/commit/?id=5f2f616343b1d62d26f24316fbfc107ecf0983a9
> >>          git remote add linux-stable-rc https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git
> >>          git fetch --no-tags linux-stable-rc linux-5.10.y
> >>          git checkout 5f2f616343b1d62d26f24316fbfc107ecf0983a9
> >>          # save the attached .config to linux build tree
> >>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips
> >>
> >> If you fix the issue, kindly add following tag as appropriate
> >> Reported-by: kernel test robot <lkp@intel.com>
> >>
> >> All warnings (new ones prefixed by >>):
> >>
> > I analyzed another bug like this today, and I think this is again just
> > CONFIG_UBSAN_ALIGNMENT=y
> > on mips/clang causing tons of these warnings.
> >
> > I don't think this should be considered a regression, but we may want
> > to change either the
> > kernel or the 0day bot from test building this combination of options.
> >
> >         Arnd
> >
>
> Hi Arnd,
>
> We have disabled CONFIG_UBSAN_ALIGNMENT for mips/clang in our kconfigs
> to avoid reporting such warnings again.

Thanks a lot, that helps.

Have you considered always enforcing CONFIG_COMPILE_TEST=y for any
randconfig build? That would address this issue along with a number of similar
ones. I have sent a number of patches to add COMPILE_TEST dependencies
for things that otherwise break in randconfig builds but could still be useful
in more specific cases when users know better.

       Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a3hc67Ks_j8cXokOQBQBEJfMbrDLHfDTXcPFYQfxga%3Dag%40mail.gmail.com.
