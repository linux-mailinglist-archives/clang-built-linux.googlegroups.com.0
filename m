Return-Path: <clang-built-linux+bncBCS7XUWOUULBBP7OVSAAMGQEJJEUVEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id F24FE300DD4
	for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 21:36:17 +0100 (CET)
Received: by mail-pl1-x637.google.com with SMTP id bg11sf3716734plb.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 12:36:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611347776; cv=pass;
        d=google.com; s=arc-20160816;
        b=mOTfJu1U0+G7k8U3kLXDBlCUsG5Hh3gbg5ddBI33xIHz2pn0Ao5kKbAZyKgfyeXuhS
         G/53HeyheEXagOP10LFdw7eZGNYn0W9ElPmOXi/g/w5oS41C+/N/YR/kkcYs0Q2OfB+i
         mU0HlfgjAMXgO6+1vEQywVzwhAIDbyTjbvXnmZY6whfFv0SShIYtWc319dAkxrhM9C2A
         PYvUuZ62EdJyFyrt2gQ6zabaKMdoNacy5SJQEmLd8NMhKxazfG6HTHak0eIxXK9jEec4
         Yh1DNu49SEABSGYbuOXfDZMamKUKD//pJV0X0jrMu/6qoAZ9pxAsWtvkqZmVay6kXjuJ
         3fhw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=vo+85EDjmJK0NW4w4NiH8rcCYHVxGljXRVu+A4zjLT8=;
        b=G/750oMDvzBkWfOA+wzplucLTIg9NZsiusAOMM2/leG65oMR+d+/s14ZaIMKf4+SGm
         V+XkHszHa8oUD3Z2WiAOXl+rqhqd/kBJQkWeuVa5zQdcjxbd3xhVZAuw2DZ/+lPop5BP
         D9WGLXBsPyo1swzKrTjeQJTI/BiZUpXNWbqhOlay+i5bH8JmD0UjaqI5RGDH3Lj2Oghz
         YMSPsTakPHswlNF/8oZp/ER1v0G8mUi+FCptR9A14ZGSKFFkIkCr/uYs1tPwOIm0ZCKu
         3ee/1zqUKzzhIShYpR5v6WmPMjV7xqYZmsyW6pBS7G85wZ3I3T75ofQX75X52ek1ikb6
         zrIw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="gDKtSV/s";
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1031 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vo+85EDjmJK0NW4w4NiH8rcCYHVxGljXRVu+A4zjLT8=;
        b=Y+oQSKC1lw8eezARwL3Yjup2NF6w+Z/Xa2KupOM1fb3450HZlr02t6iQjdaO1kjQ+R
         cdNLbX3P3Mn33HZBJEDnFLOzfNvWwdWrCdo6K7bFV1bJ5lEA5PDbAN0+L8MaALFsC/yI
         kUbe4ar1edEM6DmPuoflnXTvSS7WOpjh2+4w350DAeJBvOlKYI1yVMJRaOwDN5fN1Qyn
         Pc1eM3j40VE7+HPBpQpqiqdPXiX1OlF306CQTwGg2+MHzpjJeza3FHpErtdBjGC2iadT
         djEw3dAZo3PhWuLPhKUxT2ds41hDaROXNaGieoVoiU17QvdOrNNfYLUAJZ5g/4aMAJha
         FiTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vo+85EDjmJK0NW4w4NiH8rcCYHVxGljXRVu+A4zjLT8=;
        b=MVNiqAUdr/hXEUfF4ttcOZf60aL339EIKJehn5jitM6/astoVqEbDHMmJ4EsmQlGDL
         75665M3nWFkIE+LymKoBoEHG9q02UocytKfC7Jgzed8NKlKksR22TdA9kdx4H67yC6CJ
         Hw2i/YZDhRSALc6A6kFgVfmmdVgdBGmrEh5xipHgj0tKgkPq7Q+xwQl8lsD9oNqUO32C
         +e34b+Kz2+mTTJ4UUVNq9sYcp9nWTh+OZ4vsbh8mEhY44QdNdPKQIt2ROzt+pqLvhwPK
         7hyEK9ooJ/Peb0mTsoGwREGCI16ah3moeASsRUx2aVMAHxS5QQWEjpPfj61URIgurvKU
         ZYJw==
X-Gm-Message-State: AOAM533rOwxQCKxksRO5E7cNBdXWs+Y1U5H/ERxlWZm1aZV3jcTDSRQW
	NC+NepKJhCgv1tNCx31tFSY=
X-Google-Smtp-Source: ABdhPJzxHb5Td2P4E7Gi6kaf3/kdNLToSbDcD6xPdn4Xx1iJfZSWdmeb32Rp6f0gtnojPv1skxMkJg==
X-Received: by 2002:a62:380b:0:b029:1bc:98d8:4d25 with SMTP id f11-20020a62380b0000b02901bc98d84d25mr6557117pfa.28.1611347776133;
        Fri, 22 Jan 2021 12:36:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9155:: with SMTP id 21ls2544092pfi.3.gmail; Fri, 22 Jan
 2021 12:36:15 -0800 (PST)
X-Received: by 2002:a62:ee03:0:b029:1a9:cc29:7d1f with SMTP id e3-20020a62ee030000b02901a9cc297d1fmr6529266pfi.24.1611347775545;
        Fri, 22 Jan 2021 12:36:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611347775; cv=none;
        d=google.com; s=arc-20160816;
        b=Q7UjXoQMRNptX3oaZ3cVjPR39b/UxHNHIG5YqT4opo9RoJEw5G2pBV8TkBbrcZgVcI
         wtdGowwGFGEiIxrFiQMhhcZT239PASS0nqI0yht2qdKWw+ePjh2OzVDu1UhLBPNPqDzn
         FGQRUZNUbqtlcx1PWSRYB4j2AHFY3bTFNqMFIZnq6lgFVd29X4p64DUPRSuJLoJ19Dym
         4vFRoNmfFDz7q4eHKCSAB9oouZOfIsjH/dZVTBlb3CyUcrIcfm+K7mvLnOnz30F19nmS
         0GXu/6O+2Clj5WIY9kC/ePufHXXENPNl37BLknK9f04mt/ZGeE48YKk7UtmQLW8fvhur
         VNTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=VF9PXgscDiw2bV9roOwBYj7Ni8JoEIUlUfg2Tt6aYLc=;
        b=uuiALa+3SbUBh7W88cHhMMr0NLDUaeEO6+cG99xPN01sQaF3IMDC+fVAxWixv024X9
         CEyI+d+mvTkS6m43mEO0EPJECjrAeRegeH+YHyIkUBiMd4IDQu2Zuv62ly99vy+bRNg+
         WRczi41/QEmQccfThodXmkCqDtJ4s6DMY0U5Eeg8H61dzcPVxZlB/bI8g5xF7B0vWQ0l
         726JQcWXLDyd/D4aiXl/BH4thlXoX34BgJeWjQyExV2ssTELZT8NGiDxjvf+qxKmD580
         URHlfsUdv7/de3wCOWyRyeHe5wzYH9lNeiPJ/2QO/0WckbTieEOJNnWENOdgCZVv9riM
         Yatw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="gDKtSV/s";
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1031 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com. [2607:f8b0:4864:20::1031])
        by gmr-mx.google.com with ESMTPS id c3si482231pll.0.2021.01.22.12.36.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Jan 2021 12:36:15 -0800 (PST)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1031 as permitted sender) client-ip=2607:f8b0:4864:20::1031;
Received: by mail-pj1-x1031.google.com with SMTP id a20so1600962pjs.1
        for <clang-built-linux@googlegroups.com>; Fri, 22 Jan 2021 12:36:15 -0800 (PST)
X-Received: by 2002:a17:90a:da02:: with SMTP id e2mr7335587pjv.173.1611347775078;
 Fri, 22 Jan 2021 12:36:15 -0800 (PST)
MIME-Version: 1.0
References: <20210120072547.10221-1-yashsri421@gmail.com> <e5c5f8495fbdd063f4272f02a259bbf28b199bdd.camel@perches.com>
 <14707ab9-1872-4f8c-3ed8-e77b663c3adb@gmail.com> <fb1b511d71761c99a9bece803f508b674fce9962.camel@perches.com>
 <98d40817-1f80-c772-eb9e-a6c3c04625b3@gmail.com> <27366417ad75e0300d4647f776ca61bb1b132507.camel@perches.com>
 <bd560a8e-7949-933a-e4a9-508cb42c2570@gmail.com>
In-Reply-To: <bd560a8e-7949-933a-e4a9-508cb42c2570@gmail.com>
From: =?UTF-8?B?J0bEgW5nLXJ1w6wgU8OybmcnIHZpYSBDbGFuZyBCdWlsdCBMaW51eA==?= <clang-built-linux@googlegroups.com>
Date: Fri, 22 Jan 2021 12:36:03 -0800
Message-ID: <CAFP8O3+g3KDe1eepGiCXqwMU6K2ve_2ai69WRBCORrr5UAJT+A@mail.gmail.com>
Subject: Re: [PATCH] checkpatch: add warning for avoiding .L prefix symbols in
 assembly files
To: Aditya <yashsri421@gmail.com>
Cc: Joe Perches <joe@perches.com>, LKML <linux-kernel@vger.kernel.org>, 
	lukas.bulwahn@gmail.com, dwaipayanray1@gmail.com, 
	Mark Brown <broonie@kernel.org>, linux-kernel-mentees@lists.linuxfoundation.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="gDKtSV/s";       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1031
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Reply-To: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
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

On Fri, Jan 22, 2021 at 12:13 PM Aditya <yashsri421@gmail.com> wrote:
>
> On 23/1/21 12:40 am, Joe Perches wrote:
> > On Fri, 2021-01-22 at 18:48 +0530, Aditya wrote:
> >> On 21/1/21 12:13 am, Joe Perches wrote:
> >>> I believe the test should be:
> >>>
> >>>     if ($realfile =~ /\.S$/ &&
> >>>         $line =~ /^\+\s*SYM_[A-Z]+_(?:START|END)(?:_[A-Z_]+)?\s*\(\s*\.L/) {
> >>
> >> Joe, with this regex, we won't be able to match
> >> "jmp  .L_restore
> >> SYM_FUNC_END(\name)"
> >
> > I think that's not an issue.
> >
> >> which was replaced in this patch in the discussion:
> >> https://groups.google.com/g/clang-built-linux/c/-drkmLgu-cU/m/phKe-Tb6CgAJ
> >>
> >> Here, "jmp  .L_restore" was also replaced to fix the error.
> >
> > Notice that this line was also replaced in the same patch:
> >
> >  #ifdef CONFIG_PREEMPTION
> > -SYM_CODE_START_LOCAL_NOALIGN(.L_restore)
> > +SYM_CODE_START_LOCAL_NOALIGN(__thunk_restore)
> >
> >
> >> However, if this
> >> regex(/^\+\s*SYM_[A-Z]+_(?:START|END)(?:_[A-Z_]+)?\s*\(\s*\.L/) is
> >> correct, maybe we don't need to check for $file as we are now checking
> >> for just one line.
> >>
> >> What do you think?
> >
> > The test I wrote was complete, did not use $file and emits a
> > warning on the use of CODE_SYM_START_LOCAL_NOALIGN(.L_restore)
> >
> > I think it's sufficient.
> >
>
> Okay, Thanks.. I will send the modified patch :)
>
> Thanks
> Aditya

I am slightly concerned with the direction here.   jmp .Lsym is fine
and is probably preferable in cases where you absolutely want to emit
a local symbol.
(there is a related -z unique-symbol GNU ld+FGKASLR thing I shall
analyze in my spare time)

If the problem is just that STT_SECTION symbols are missing, can
objtool do something to conceptually synthesize them?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAFP8O3%2Bg3KDe1eepGiCXqwMU6K2ve_2ai69WRBCORrr5UAJT%2BA%40mail.gmail.com.
