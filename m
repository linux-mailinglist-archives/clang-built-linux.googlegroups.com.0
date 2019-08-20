Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHWJ6DVAKGQE7F4B5GA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc38.google.com (mail-yw1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id A3BCB966C1
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 18:49:35 +0200 (CEST)
Received: by mail-yw1-xc38.google.com with SMTP id i192sf6265110ywg.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 09:49:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566319774; cv=pass;
        d=google.com; s=arc-20160816;
        b=jG5ktjk7xMtkBNmNryAmC/UgOsTN1bgeEf6wBPbh47pwZR98gc+/VSKD1bmHfnv+Zb
         ivBXDsIV0KV05i09RhqGFHDeTV1DH5kSPumRjBJV2jD+jI2qgoobNZ/GvdUTJluBLfyQ
         0J5awjOKiVsRGNrJ5SGDHtfRenS8nmDs/HqIQb0D+yc2cpn68/1fstOMs9rkYswXNXIV
         N6/CgnzpXGkvoSS4q+jxBmNfU/6jHxRbU2sdhzQTPMzaU+bXc3MwBxyhbj4l3Cj3wdFl
         5AJ5f3+vLRi9MvJ0rxuFBf8M+60bhZ0NRF5pCW8FDTO1tlhPtCMjJJMwuvRbXTGCyaA4
         n55w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=5vyOA1QjSp105gE7obC04LPD0CbZvcWQk7ut+C4UQGM=;
        b=XBHwXyPpCNLwv0/Azuo8Fip8IlsfVoQmUDkVqRL/5zv9aTnzY9bwt3px9wFQPJM49+
         MXzvNgr1/nqYGgnp7ROX1VEO+fS5bTYU+75DVDlO+JBWXhqfWAuzryIXHELtWRZYOA7O
         jOcIa/iBzJYPj/teK6FCXepbS3wte5OO1kJAp+bfDSF2DS09E9kP58pI0Kk/Bdesshyl
         dwCjqKlpNJJpkrEObsnugNCm5Hph2mGL+eeQlZ8LPo9i0j/Ii69jrXPcW2hdETv+a4az
         P7ucwSD5o7v7PIYJbrcKy8xCOxi/po6aa365Amd88/CgrOc6DTFfI4PMewfsAwqo9vA0
         q25A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tXEAJ7YG;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5vyOA1QjSp105gE7obC04LPD0CbZvcWQk7ut+C4UQGM=;
        b=mFmMjFLsvptq6hQaq9dil6bn+Oe8Jukr/eIZrVg471oHCZabfm3jsg1Yh5AVH7nWDX
         kUszc3cNZe5QY0AhmkQwtP3TYtGssDQZPVVQBa/RaQZEfCXONsNb1MPAJmuSaSUcdjbf
         15cIBvyxyJoGcucmyGiJt0bsn5deAoKvWilcWUvz9L34PmVZ4cAt0q6dnK0WoaO1exAX
         rQzS9hj/uWigrDowme6uaaXE75JikcZb/CBgNQ/NNFzx/kSy4T3yItOVvMfTkPUacdRv
         RQBA8Otfsnl8F7Gh+3FS14X8h91u7B96kxUBcPtaQBd2s6xyPiVocXRt1Qajw/e8qf5L
         IwUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5vyOA1QjSp105gE7obC04LPD0CbZvcWQk7ut+C4UQGM=;
        b=I0hw/cKoH/33eIVlPmUe7TIA7O5wRvdbluZJI6nIB87jLf5ZY2PBKTb/HvryUSl01C
         IbZis9m4fIsy7GyZWmdgswXcxybVNWUOngAqnEhtv/uq27pTg3JxTWujLqXGIx0quXcu
         omD8IA4YvhFg1h2LC7EoSWic9eHHmDSTIHTWQDxCrOUSB5lvzRdoeaIfMaxgfV9SvR2+
         BM1MLtMJLdQP3bqmg/ns3eCZZSJLUcdn9knDAwvJOnyfIcW9o8Mm/hvtLK+Hgz8pT2vT
         K7FxQE3LWHjDrq6UWGigQXv1xzgMk37vJ+f7R8/mk9JuqdDb7c4TWrKJcDaX1B5X4HMV
         qb9A==
X-Gm-Message-State: APjAAAUWbnu2MfKyyQrW6sOYDu1Lt+4ST20A6TM2AWH4eYZKxIfIIMgr
	nk+haeyS93friUZxd1XWzjw=
X-Google-Smtp-Source: APXvYqyOjkjdiEaExNB05a+3wumo8z4qz/fYj2KFuf7G3FGs9ODdFYQArdjz1HVUUYhgMAWlBobcaQ==
X-Received: by 2002:a25:b316:: with SMTP id l22mr21086857ybj.479.1566319774713;
        Tue, 20 Aug 2019 09:49:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:e684:: with SMTP id p126ls3389991ywe.12.gmail; Tue, 20
 Aug 2019 09:49:34 -0700 (PDT)
X-Received: by 2002:a81:87c1:: with SMTP id x184mr8619937ywf.241.1566319774446;
        Tue, 20 Aug 2019 09:49:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566319774; cv=none;
        d=google.com; s=arc-20160816;
        b=uA+mKUAQ1u3alnJ4EJj9FkMpzdUAc6jErp+USNFe4rjyrvzOFXerzcejXtKhnMTUSH
         Yz/WyTKKBIZ9Z7iyNGMK1NdGcWi8CFqLJ7VU1AuBgHa0EffAGy4/bz/6E3s7W2e9LSSR
         eTGnkJAtNXXDyCs09X+vZSW46fS7dHIAcNYu/pAG9NV+3nBLpaofuquUJ35tsBf0v2XB
         IivDXtgV0kbBvepHBVbK3kalRl0DwZzFjlrELyGezQ1Gi6OTxaC3X92JvPZIschFbEPx
         Q62pVCFdwcY94AJBy/MunyImuJViO0DyzRU6cTaWtRLX4T6mbFbRRW1YDHXUBjTk3Q+i
         lksQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=8ObtfC9dSKTHb36HR31JqhP2sJ8o706j6Llrs5paliI=;
        b=OmXFZ7yKvLeLyY1BD5Iv9lqjBPzf20BeNrzAg+4hQA/ScnI+O2cP83RP2Y3RA+Bxz7
         tB5Yv0APcr8NYodu9+sSYz3hPl+4YOHwdJoz02pY+PfCa34yLjUO2s9CFEdr01Ip+gg7
         gwWcvkXgTpO5Y9JZyivT7OogORAslpccodhBPmj6sdLB0obLs93qy+YhU69FWcnwzGTk
         pTV39G9hlTHQ4DYc7V4l4TCCVmlrTN5gf8DONncSUTXJbuoQHlJmViEj+zBupa8zsgIc
         sJgyEnTHdx5+lvdsXfqv1DDPwradK/XsspUwyG1ApeiirJcHFpy+gL4eRoo2SdhWyyvu
         fHPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tXEAJ7YG;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id r134si1126440ybc.4.2019.08.20.09.49.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Aug 2019 09:49:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id n9so3568950pgc.1
        for <clang-built-linux@googlegroups.com>; Tue, 20 Aug 2019 09:49:34 -0700 (PDT)
X-Received: by 2002:a63:60a:: with SMTP id 10mr25245286pgg.381.1566319773123;
 Tue, 20 Aug 2019 09:49:33 -0700 (PDT)
MIME-Version: 1.0
References: <201908151055.OL6W1ZPG%lkp@intel.com> <20190815201444.GA119104@archlinux-threadripper>
 <20190815201726.GA5813@localhost.localdomain> <CAKwvOd=Wgr_HhJACpO_x93owqXKCUp2Ydcd7CjF=9V-1b2+4tw@mail.gmail.com>
 <a2ef668b-aac2-cdb3-d747-bb1331cd7568@intel.com>
In-Reply-To: <a2ef668b-aac2-cdb3-d747-bb1331cd7568@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 20 Aug 2019 09:49:21 -0700
Message-ID: <CAKwvOdmV+NG4q+gZFBJDeC7NK0YDRoZwUrgwgc_pNN+oNd5Mwg@mail.gmail.com>
Subject: Re: [kbusch-linux:lru-promote 24/25] include/linux/mmzone.h:282:61:
 warning: use of logical '||' with constant operand
To: Rong Chen <rong.a.chen@intel.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Keith Busch <kbusch@kernel.org>, kbuild@01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kbuild test robot <lkp@intel.com>, 
	Keith Busch <keith.busch@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=tXEAJ7YG;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Fri, Aug 16, 2019 at 12:13 AM Rong Chen <rong.a.chen@intel.com> wrote:
>
>
>
> On 8/16/19 6:10 AM, Nick Desaulniers wrote:
> > On Thu, Aug 15, 2019 at 1:19 PM Keith Busch <keith.busch@intel.com> wrote:
> >> BTW, this is a pretty experimental branch. Is there a way to mark a
> >> branch as such to have 0-day skip it? I occasionaly do some pretty quick
> >> 'n dirty hacks for these PoC features and I only push them for easier
> >> collaboration, and 0-day can end up making a bit of noise for things
> >> that are not quite upstream ready.
> > + Rong
>
> Hi Keith,
>
> We can blacklist branches with patterns, could you tell us what kind of
> branch name we need to skip?

One thing that was common in the Ruby world was "convention over
configuration."  If there was a convention like "0 day bot won't test
branches named X or suffixed with Y" then we could easily tell people
who asked for blacklisting to use the convention for their
experimental branch names.  Then we never need to modify 0day bots
config.  Just food for thought.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmV%2BNG4q%2BgZFBJDeC7NK0YDRoZwUrgwgc_pNN%2BoNd5Mwg%40mail.gmail.com.
