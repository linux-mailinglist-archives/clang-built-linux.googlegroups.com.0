Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBKODTWBQMGQEI72SBJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 640F9352F28
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Apr 2021 20:25:46 +0200 (CEST)
Received: by mail-ot1-x340.google.com with SMTP id c21sf4260574oto.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 02 Apr 2021 11:25:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617387945; cv=pass;
        d=google.com; s=arc-20160816;
        b=fTXuLGQQWNbirNpGk8BwbQ6vxhIj8cOaejYaLQD1nMAJAsZVQv/g10TIsxuKSUgv17
         xl83/Jil0pyo2vVticoDs8uE/dCwcXK68Ykzfyn8ul0UuQ5pml68dbouvNDz7D2/POPx
         mOsiAgU5yMcCbEDpxFQjvZ6AYd242EzeLLzwtzliYsyraFZZEUSVYiN+VsnXoFXG9J0T
         ZUubJNHAqD/9W4nlEHwdARUdeMPfhrawgcYSBpsPg4AwpaoXm0IOGmywpHT0WrHPpBjb
         W5fvd1NfS+JKiC4RjSDXpuSq07po6amAdnDBjrYQ29xaA376Cohn5oaXvg/WFERIscxl
         1qQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ohuhb3tkPZF+QNSpZSm71U9vquOa7jJeOrcEX2kfnKs=;
        b=p85pqJfS4GiuUw2gX4DdTHg/so56q9ObEDruHX4d+SOrkm0f2tv7TX5FIpiPUvyTaS
         BJoDbADfvuX1TzfgFzG9uv3SlxPydd6mtLbsaAd/byz92AsuMXCCoZr22T9S5J4wyzXW
         ubRizz2UVioJIrR+NNHsBnYvwrYBRGy4+PYzvbkJ3JHNRffCX0oYctEF5qIJ/RayfsFU
         5hYxud5MxCJthdx4Dcb+0LQJF8zr3DPm4EWqWYAGkZkchcl63GmMDewRZsrtS8cmBj/k
         wCO8P5SKHBR+XJ9f9E5tKqrbtVyuYCYyKxFbGg4G1+Nvnj3LgcusOzDWI4LyTFpOuJkT
         7Sjw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=S6NXdtr+;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ohuhb3tkPZF+QNSpZSm71U9vquOa7jJeOrcEX2kfnKs=;
        b=nh3cNnhP8j8ChHc7LoILFFQf8fqT1ppO8uqVloYN5d8TDkPW3k2tgjVamBBgMLREl3
         nB+sFIAQLAqyrfg2iyO7OwN9OlgmzF79clVzyV5iG50tGY7XAIIxoJj8XDEv9FRIHuJ+
         VghWEjC8pRYRjCv5XAlL0xopV1t84bNVupP/CQJLsvwutUZP75Y/Eoc1mq8q82SIda/P
         TtCPp1GtYX6FZPfTEzCQYdpBdPnXwu2oPvJrvqC9XJDdjTHgfnhsx6m+YnuZ3yl1d/jY
         YSNLoY6J2e5CxiLmOYfc+7Zq3DklS3tcfCzyxBZhkhHijWnMU0Wn4t8ADj94TrXBX/gy
         siMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ohuhb3tkPZF+QNSpZSm71U9vquOa7jJeOrcEX2kfnKs=;
        b=OUxep32rN1le2JOc3TeEpJw0tzTuA+iqYZb3fmOJ06UwRxygMJnI5gwWGQW3o6crI+
         i0VBdOnl/Zn5BqXk9uzz34QMjWjYYMNzmP+wBbFwNXW4ymmScYZSVDNf5Fju5oCzx9ST
         uA/vSSyPbz2cSaCn/pR7qkIswpL3OkSA73UrHEqHQagAcm4YK3zPNWxUlcaCQSHG7z67
         vJ80ZATe401ABZD3eQQ+v3QHb+sawMszXZ2FS1MdD3wgknv5qdxKP0FnbaAeYxkKz55L
         jp7cJ7ojKxgR3dohCpoRQoqp4WcFyYzfS6KPKtTglU4uIe9Ddz6Sj+kUP0s+Fsa/sFtc
         U8XQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530G6X7ISMEicaJ6e55h1/RPmNnIs7JPd7FHVRSN7pTKgaaEMPnW
	NhyR3ddZo54gHcDYlBhRxdQ=
X-Google-Smtp-Source: ABdhPJwlDcls7H4oBVxZWpfJrLzZIQtzoQ06WrCeF68UIbJ92Y4RmhlTD01x/gwhrp0yYkIbIKn3NA==
X-Received: by 2002:a9d:663:: with SMTP id 90mr12346234otn.311.1617387945215;
        Fri, 02 Apr 2021 11:25:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7456:: with SMTP id p22ls2281709otk.11.gmail; Fri, 02
 Apr 2021 11:25:44 -0700 (PDT)
X-Received: by 2002:a9d:6a8f:: with SMTP id l15mr11988532otq.174.1617387944878;
        Fri, 02 Apr 2021 11:25:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617387944; cv=none;
        d=google.com; s=arc-20160816;
        b=txHPm5BRQdPzDmUQTumyDDDmLv+vZGuLyPxAKPhudUGFsoOJb0JsC215+xMsUSDZ7L
         WEzxjgRkTj94yI6Xm9al1x4q2MuPb2n74c++Ffoe8OTOMOd9fhx79vWyBUiIKOpThLo+
         bZlQxo4TLWx22pQhdoMKqsWjs7DIDSpiz7pWq0mIkZfIsutYVHJS7sr1OATk/axlkiFX
         1UskfrQCfTcVXTMmPjqPc/b1Iu7LjMZWzB3Z3j6ybbe4nf9lE7Z8mxlf6BgN+eLFPOhg
         51cj3KhfoY62Ip1aWbX/8TsqukN4uABLG7i/t9VMbOqmyQKnIPXKxmps1ImD6qD+Atvl
         o18Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=7WB9dyBxJfyi+dnN/pUTcNGEGmQQ19of2/quWexK5LI=;
        b=X+wJDeV0i06YodXEwkl8fS1QBh8LRy2Bz8RVWTExy9AfQ3ovVSjUdYb0OVfpxVhXKy
         4rGocYDgPkVSOyHldov3dRWebedwB2iGgd0YXdJHL8Dga4KqT4Y/yPTcc6pnyJ0ODSTR
         R+AOocgkl+oCjAlnjWbtaDHRDxAkgS3p50yFRcnfOvSYxJ7KYAV+NM3VBQjLp2+W6ZvA
         TdXn7p3Qsg7Uj4R7MWcNlildeXBtrO1tSU1etNWgAO4EmCeq+A0AXCHaxXTcpqv+2OAW
         pXLughr/aBvIh/J9WoMTpiMaon1HCTr/J/RDCf9HTRtzMHfZvIIzq+/gtJIFhtRLNTrE
         3SEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=S6NXdtr+;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com. [2607:f8b0:4864:20::631])
        by gmr-mx.google.com with ESMTPS id a12si738070oid.0.2021.04.02.11.25.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Apr 2021 11:25:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::631 as permitted sender) client-ip=2607:f8b0:4864:20::631;
Received: by mail-pl1-x631.google.com with SMTP id e14so2861957plj.2
        for <clang-built-linux@googlegroups.com>; Fri, 02 Apr 2021 11:25:44 -0700 (PDT)
X-Received: by 2002:a17:90a:9413:: with SMTP id r19mr14769842pjo.65.1617387944473;
        Fri, 02 Apr 2021 11:25:44 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id p17sm8464878pjv.49.2021.04.02.11.25.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Apr 2021 11:25:43 -0700 (PDT)
Date: Fri, 2 Apr 2021 11:25:42 -0700
From: Kees Cook <keescook@chromium.org>
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Gabriel Somlo <somlo@cmu.edu>, Nathan Chancellor <nathan@kernel.org>,
	"Michael S. Tsirkin" <mst@redhat.com>, linux-kernel@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>, qemu-devel@nongnu.org,
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
	Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH] qemu_fw_cfg: Make fw_cfg_rev_attr a proper kobj_attribute
Message-ID: <202104021125.53164550A@keescook>
References: <20210211194258.4137998-1-nathan@kernel.org>
 <161428829728.2305454.15456455443457551559.b4-ty@chromium.org>
 <CA+icZUWdeWSy52bU4cjHau1hn5NiFAozaHgDb=geaaCYOET9+w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+icZUWdeWSy52bU4cjHau1hn5NiFAozaHgDb=geaaCYOET9+w@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=S6NXdtr+;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::631
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

On Fri, Apr 02, 2021 at 08:42:07AM +0200, Sedat Dilek wrote:
> On Thu, Feb 25, 2021 at 10:25 PM Kees Cook <keescook@chromium.org> wrote:
> >
> > On Thu, 11 Feb 2021 12:42:58 -0700, Nathan Chancellor wrote:
> > > fw_cfg_showrev() is called by an indirect call in kobj_attr_show(),
> > > which violates clang's CFI checking because fw_cfg_showrev()'s second
> > > parameter is 'struct attribute', whereas the ->show() member of 'struct
> > > kobj_structure' expects the second parameter to be of type 'struct
> > > kobj_attribute'.
> > >
> > > $ cat /sys/firmware/qemu_fw_cfg/rev
> > > 3
> > >
> > > [...]
> >
> > Applied to kspp/cfi/cleanups, thanks!
> >
> > [1/1] qemu_fw_cfg: Make fw_cfg_rev_attr a proper kobj_attribute
> >       https://git.kernel.org/kees/c/f5c4679d6c49
> >
> 
> I have queued this up in my custom patchset
> (for-5.12/kspp-cfi-cleanups-20210225).
> 
> What is the plan to get this upstream?

I haven't sent it to Linus yet -- I was expecting to batch more of these
and send them for v5.13. (But if the kvm folks snag it, that's good
too.)

-Kees

> 
> Feel free to add my:
> 
> Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
> 
> - Sedat -

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104021125.53164550A%40keescook.
