Return-Path: <clang-built-linux+bncBCLI747UVAFRBQGK6HZQKGQED766N5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x938.google.com (mail-ua1-x938.google.com [IPv6:2607:f8b0:4864:20::938])
	by mail.lfdr.de (Postfix) with ESMTPS id 926D7193AAD
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 09:18:09 +0100 (CET)
Received: by mail-ua1-x938.google.com with SMTP id f15sf2094244uap.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 01:18:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585210688; cv=pass;
        d=google.com; s=arc-20160816;
        b=P/LsTbOrlvxlPdfebFPFoM5MklgKv2X6N2zpeJ/K7le4bmflr1ulohbQ5QsBXqS4ST
         VbGlaDbJXrE3C2x2DhXB89vazs5lgczURhPOf/OdqTtpXPtfyRalw4HfyOYQyxpquWUH
         BGYXOBXEt4jaSNnAYVFXzw5yfOPxPvUnPPqz2zI14BrPr12zrt9YeeOKxdZ8XYfL7ViC
         lg2+LkbyMQ+jnzv1m1XHYBtVMRDNMhmF/wwL6D8LiRQg2IKbNxvXj+XfA9fSTr4SlHV5
         Jov21M7A06DU6BOkuGhEhCVVZkpyCTCGqlgltaoWT1/ZEfsS5Wo5uIu1L12x5xdaaZ8R
         CoRg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=AMNqef0Cg2utEnAdbfBMfmhDH0iS17E7HV+R7jC6/Y4=;
        b=TZ0b4O5HC+3uZgss2098f45iTjPRc4+Ciult+vYtJyKywCawRwZPrtcCNV2qHt55B4
         DR8ZZAtRaCUWz2xGg0E01yGN2AKItsg0EacRO0pvR5EIBbQON8Byu2x5lMW/Z+Hj1ePe
         v2tOcfdUTgCJaVfTbt8XkVEck8GjIA/3OrbDGuaDsmgx5ezoFS2eBx2pCsSEzxeA9TeA
         zZdLB5N8Q5ghVuMMHJW4l66KK3uSMKAA634soJB5QKOfIACya4vATh8Kv5X0/CeYigGP
         HtFLWLHMUinScyz1rYvV0iczNzyVvNTpYZns0jUw3PhKbp6Of8OdqsZSHrUD9xOUj8fP
         aIdg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@zx2c4.com header.s=mail header.b=boOyqsmC;
       spf=pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) smtp.mailfrom=Jason@zx2c4.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zx2c4.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AMNqef0Cg2utEnAdbfBMfmhDH0iS17E7HV+R7jC6/Y4=;
        b=eI9G6fF7K+8AQtuMRsJytNmr2QRQc6Ex5J5c2aaY24P/fEaTzm3ujYXnOB41XBz+Pi
         6kPlFoKupOz+dE+Ir5jj3PK1v5dAnxYkZsT3ezO3ehCyv8gboPmLGb6ucrjXdMEdb6gc
         6JEvWJi+kqmZ/H5ftnOfaU/bD9x2S6NDitP0wMnU2HTxBepLXPzdY/HjWcoM9KiQtivi
         M//vRVtf65gS7rFvh5kKeHqQtUhrqmNUwO1AK8/o7ldupvDz8t+pe1fP2qtd3AQcpiVX
         Old39t5s1WuZyXjJf6KIpyeT1qPkdxvP1KbeB5rSBmHRp+gys5bXtb598mjTvl0u30Ul
         6jmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AMNqef0Cg2utEnAdbfBMfmhDH0iS17E7HV+R7jC6/Y4=;
        b=b4lL7bri5csydRVAnCx7BlDax99eRS3UP89uzRFJ40JATh1nXkHFURbR9CRdW35Jug
         SHWDLXgm9s85fXmpy0BR0XlSO1uemUEttHfDSQa9KnoBHruKSxEsmY5TDMEkQIFpShO/
         8aMdnLFcgH2UO4dNIA7h/kMAEj63b3IsQ35ebQIKVQ1rOHyI67XljafHMr0tvHrksgDu
         O16dCY3vcJednqeaV19yApFtMmQ2romYVqBS81D/BV+h7cT9UbBq8JoTr027HSYHbY5H
         4ZB/3HtQ9CLhIV8nxKCu06G/c11hWGwjinHI1c64Ya8Y8lQHUVoPyh4ccv2dhcr71sAT
         flkw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0FNin1aMZcMeMwxjFuUuWxHQ67l3s0PReBO/JbttVYeJD+s8gW
	Dh757+HEe00nef/G4mtxZVU=
X-Google-Smtp-Source: ADFU+vvw1jRIYqg0gClOBaASnjZ7+TuwNTZwwiodXYlanTaP/N9xIkJsg/r8cjGDEmzQmSY6hmKbFg==
X-Received: by 2002:a05:6102:3d4:: with SMTP id n20mr5758084vsq.39.1585210688687;
        Thu, 26 Mar 2020 01:18:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:c496:: with SMTP id d22ls593794vsk.8.gmail; Thu, 26 Mar
 2020 01:18:08 -0700 (PDT)
X-Received: by 2002:a67:5c7:: with SMTP id 190mr1464554vsf.97.1585210688195;
        Thu, 26 Mar 2020 01:18:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585210688; cv=none;
        d=google.com; s=arc-20160816;
        b=E6dZNtaTGMpgyf6JFIX8efxNyLxRtV0oZvrcnZ+BykoUNrmtAlEQGhh3dswlkdnNqp
         tosCuSJVTuU/Htk27/8LupBq6wDuB/YbueXaG4MO03MF9JuNV896aiNf2khCfDLTaiPR
         fYlUGUbKmbiRxhZF8ixLIqwrTIK2KmCBPbnpNDaE30yZTOW/k6vkW9cpQ5fqLveUUHxT
         xsYH/nIH/n27SD5wN51vS+nKanh3mrY4r0CWpJ/+k77GnAmgjvBTyClUjHG4XGKY6DG/
         +udfAfCqxtgz65Lq7WoZuc0/CWokAR4qXBtlVrwnoLfPHoybAH0JRxfrks5+5t7CSy67
         nnBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=wkkx2M356BT7rIi5W/TizBfnAHnrMdsf1tsSmYULVEA=;
        b=MdwlEQ5Hne4KBr3HoJ3oSonEXKhQPAFIq/8usu0GHnZsWzp3Tr8iwhBZylxkghVbq+
         aQAu+vO310vQ/k0rTLYsAzvErbR6IG0sOwOJ2Yal8zLyjPj8mz9VkU2upRwMHue+XsHH
         je0ejGjoQ243yZyaT3G6z1sEw/Vx/Re7RjSnxZtIQDbHTBRJ2qXmPMGGbWSRWhowTm7A
         8VE/IN+LsbaKCYuoccwVoP/lzMlu7c96ZfZQKQlzRRooIeYQL+HRid6fb3HhG2pfGl6y
         hweuRywtOrZhZ9mgIOZzGM1Js7wIoUbd6pWO36SA0Ro+D668WeAYteqf30e9PlRD0/S8
         3h2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@zx2c4.com header.s=mail header.b=boOyqsmC;
       spf=pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) smtp.mailfrom=Jason@zx2c4.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zx2c4.com
Received: from frisell.zx2c4.com (frisell.zx2c4.com. [192.95.5.64])
        by gmr-mx.google.com with ESMTPS id h6si135889vko.4.2020.03.26.01.18.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 26 Mar 2020 01:18:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) client-ip=192.95.5.64;
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTP id 03b0a9ee
	for <clang-built-linux@googlegroups.com>;
	Thu, 26 Mar 2020 08:10:45 +0000 (UTC)
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id 5c7decd7 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO)
	for <clang-built-linux@googlegroups.com>;
	Thu, 26 Mar 2020 08:10:45 +0000 (UTC)
Received: by mail-io1-xd33.google.com with SMTP id m15so5150293iob.5
        for <clang-built-linux@googlegroups.com>; Thu, 26 Mar 2020 01:18:06 -0700 (PDT)
X-Received: by 2002:a02:2a4a:: with SMTP id w71mr6759564jaw.75.1585210385536;
 Thu, 26 Mar 2020 01:13:05 -0700 (PDT)
MIME-Version: 1.0
References: <20200326080104.27286-1-masahiroy@kernel.org>
In-Reply-To: <20200326080104.27286-1-masahiroy@kernel.org>
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Thu, 26 Mar 2020 02:12:54 -0600
X-Gmail-Original-Message-ID: <CAHmME9pnAvgErYkcvvdakvfMY8ZGKfwHHNYzpVtJ913Tgp16CQ@mail.gmail.com>
Message-ID: <CAHmME9pnAvgErYkcvvdakvfMY8ZGKfwHHNYzpVtJ913Tgp16CQ@mail.gmail.com>
Subject: Re: [PATCH v2 00/16] x86, crypto: remove always-defined CONFIG_AS_*
 and cosolidate Kconfig/Makefiles
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Thomas Gleixner <tglx@linutronix.de>, 
	Nick Desaulniers <ndesaulniers@google.com>, Borislav Petkov <bp@alien8.de>, 
	Peter Zijlstra <peterz@infradead.org>, "H . Peter Anvin" <hpa@zytor.com>, X86 ML <x86@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Daniel Vetter <daniel@ffwll.ch>, 
	David Airlie <airlied@linux.ie>, "David S. Miller" <davem@davemloft.net>, 
	Herbert Xu <herbert@gondor.apana.org.au>, Ingo Molnar <mingo@redhat.com>, 
	Jani Nikula <jani.nikula@linux.intel.com>, Jim Kukunas <james.t.kukunas@linux.intel.com>, 
	Jonathan Corbet <corbet@lwn.net>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
	NeilBrown <neilb@suse.de>, Rodrigo Vivi <rodrigo.vivi@intel.com>, 
	Yuanhan Liu <yuanhan.liu@linux.intel.com>, dri-devel@lists.freedesktop.org, 
	intel-gfx@lists.freedesktop.org, 
	Linux Crypto Mailing List <linux-crypto@vger.kernel.org>, linux-doc@vger.kernel.org, 
	LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jason@zx2c4.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@zx2c4.com header.s=mail header.b=boOyqsmC;       spf=pass
 (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted
 sender) smtp.mailfrom=Jason@zx2c4.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=zx2c4.com
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

Very little has changed from last time, and this whole series still
looks good to me. I think I already ack'd most packages, but in case
it helps:

Reviewed-by: Jason A. Donenfeld <Jason@zx2c4.com>

Since this touches a lot of stuff, it might be best to get it in as
early as possible during the merge window, as I imagine new code being
added is going to want to be touching those makefiles too.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHmME9pnAvgErYkcvvdakvfMY8ZGKfwHHNYzpVtJ913Tgp16CQ%40mail.gmail.com.
