Return-Path: <clang-built-linux+bncBDYJPJO25UGBBUV7RD2AKGQEGWCWS2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB95198157
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Mar 2020 18:35:32 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id a8sf13377113plm.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Mar 2020 09:35:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585586131; cv=pass;
        d=google.com; s=arc-20160816;
        b=puK36dobQxHspK3ZtHaeIqI1KXtZsGayv/4CA3CGGi86LEn9JKRzET4jM2smSfkxa9
         ylyI/rGF2NRd3XVKwpf18pPxnx+FUqtCItRszSCN1lMq7WhIOYX0H1cLTolO7vLgAlIJ
         6Klm/7vF5mbBm/1ZL/VUBHL2iASsxxds4mkfkEebjrKHI1rFzB569EZQfat4rfXdu7wE
         aCAcYB4g6C8EWF4WwGvRBLhka3vKQlQeJTdz/PdUmz9EM7sMNz+ERM2wn3E7nlvKtofY
         fG3pra1N6hdHnNA2uYG1FHc/QWWnUcX7+keDaYx4/mzvWI3ajmf34Y+tPZTf1XKgWlFR
         l7LQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=y25uwQEWQ1fGuuAD+nGelyHCdpyriFfrONje8OHQzG4=;
        b=WvbhXJGOAtn7R1u00o1zGWXsSF/CGdT87ieQWlHO1t5S06n9EFVFXE2jdF5joPoL+3
         WOlZ1ETvKgOyqxoN9Vj2QLnXsRCvMUA3ok6iJSESk/V4McXKSK0ejY0vcEPBtY0NWwpW
         IZDkGC0SjrZ2c/QmWXOCP8Uo11s5Z/XgqvJO8Pe1Xlv8rcAz5spjT0GKAjfV6g8Wu+th
         ZIaxF800Zh4yBjjwdgWYRk+UF5ykEoiKJkevIRcM1IrdeGe7mkh5rAnRaMCvlVYdH5mt
         mPmANBHpuqwFAErNOXOGRSgEs3vuQ7QkVtR5oBuq3Nrh1SQwhqQHAZE9Ac5xpxKSmHZj
         pMMw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GPRikbco;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=y25uwQEWQ1fGuuAD+nGelyHCdpyriFfrONje8OHQzG4=;
        b=kM285BJL6hD/GadpLbhK8jVMRpn5TJJzg0xFyeEjSDAcZ9DOBQ//ad/bIi88uN8Jfo
         PXil43Us9VWIpTogXC6nPqWxmdLimhL10uZ1fAr2O8ZwB1eFDQbUOyoSAcdoiQrNLQOg
         4fS1XzZ6y4elC4mLIIwKIHBztR2QxubGkU63Ls6t1hVJLqPOvRa0+P9Lwi7Qf6rlGcMy
         9+ZG2o7Utt787ea09hj9vQNAonn9tFA+Jxo7CRWNEqbpaSfLTfVcz7hCoTW2SCkWcemO
         J2MjyIFdaDcYDwo/ia5VHOPv0SXMh0P1cX5eE1HPkqOj459Tukps2igDH0Ke5WjHVnGE
         rnjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=y25uwQEWQ1fGuuAD+nGelyHCdpyriFfrONje8OHQzG4=;
        b=sT+AasJvfIEuqFcb4wHJ+li0yL0j1OC2Gcx+n1LpJqlSlurpmrGwUZ7qDnh0Fqq+Od
         j6gvTP3MLUMbxI3jnYecHCnEUAZOnSmGlBWX2SXhgrG/YoVV45dMHK+DPzXG7im5/b5Z
         eGyBwLsVHSaubJHJo6LAVCLXzL0y9zZCFJ8/Jh8h0EYPFt33xbuwwv9hlFOk4gJ9iVCP
         6tHWWHUlGpv752huaYf8UjVrc0GEZ8TIGZosPO+qRptl+TzfRN678hZ45HUM5reIoT28
         LAmrhy+lROzs/++8avDhKpsauT3OlD6PdC86yg+suDBW0brdhq2JIzTmRtzbllYeBrlg
         M1zw==
X-Gm-Message-State: ANhLgQ3E4dEHnBSjXsfxOBMn25qAjXkjTKga5XMNVnPy2tBOYmuyZN05
	v8T8yJU1YaZ0C9IoHwMvHX4=
X-Google-Smtp-Source: ADFU+vsoEE4g3l/zXfhtK9LPrPdAejJvbwKw7Yh06g+v6gEYyE5irhfdrriL9UqRt1EwWP2VRHftPw==
X-Received: by 2002:a63:704:: with SMTP id 4mr13519523pgh.294.1585586130734;
        Mon, 30 Mar 2020 09:35:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:a35b:: with SMTP id v27ls12046987pgn.6.gmail; Mon, 30
 Mar 2020 09:35:30 -0700 (PDT)
X-Received: by 2002:aa7:8586:: with SMTP id w6mr13147318pfn.140.1585586130194;
        Mon, 30 Mar 2020 09:35:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585586130; cv=none;
        d=google.com; s=arc-20160816;
        b=jLyUdx9uVCtCyzi8QtIoV84lH+v6stmT2e/KW9UjauELM7SXrYFlsteQM45lo15Pqv
         JvyYwm+bbN/aOLX3mBmq2/MTGlac5qMiT+3MBKpOOgZdd/af3kPABgn3pLbymvyBfDsC
         5mzB1jc0rMnB+EsguiJURltiXNUPe/WFTqijeMkTQRsIDKsgtq4iVfqLS3IEjUpsucJR
         Z8K7HpRr37kawzCtYLPMUMYkBRbum8Ihb+GHCd+D3rBYUinst4Ot5/C3P7hvPAXZWaMH
         1nAhl/HA9lUgyKTdHnLLUDr3f+oUmOzE4wiylVRuh28KWzoc/4Iw4UVt3b/BZvgUYHqx
         JKGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=9x8EVDaZ/oWpKEoBBw7yvQa5/u/+rdXt2xVGEopan7w=;
        b=mHrW7cxTLnqiW4f22CCesXTzeREPTNjZwE1Z843HevNZRwOpONQC6bo/sqsPOdH7me
         ssCWOvJJkeMCdBjnqPBaDt3r1Fs2unX72eSOZG9rtZJp+dkx7jzmNWGoU9lKbhdM7Jaw
         lA+5H8WCeqB1D4T3TtZll4RyQvXgmlgDkyWazQ5TKTZ46l/SrF9ZilTggng4uhzZEaIo
         iQ0btCQSr4jNVVuqugoZ8cX8eG9M5sJD7/mxW/z3JbDnkfZi3Qeo5+HobLUuVEvcs/pN
         +e/rLTGWjJnDPkZpS0FOjmLHtx3YHpvhDTGJPyW8HXJjUgEHZXy5Nr8EMLrxAgJy+Mcf
         lEog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GPRikbco;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id w18si31971pfi.4.2020.03.30.09.35.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Mar 2020 09:35:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id g9so7575669pjp.0
        for <clang-built-linux@googlegroups.com>; Mon, 30 Mar 2020 09:35:30 -0700 (PDT)
X-Received: by 2002:a17:902:988e:: with SMTP id s14mr10723871plp.179.1585586129616;
 Mon, 30 Mar 2020 09:35:29 -0700 (PDT)
MIME-Version: 1.0
References: <20200327223443.6006-3-gwendal@chromium.org> <202003301529.ukpsA1aF%lkp@intel.com>
 <CAKwvOdnLGr-6cvMLJ3NMk-fZHhYZcrsaGjT=sfBQmQo+T7CeZA@mail.gmail.com>
In-Reply-To: <CAKwvOdnLGr-6cvMLJ3NMk-fZHhYZcrsaGjT=sfBQmQo+T7CeZA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 30 Mar 2020 09:35:18 -0700
Message-ID: <CAKwvOd=BaJz+nfYTeMFsvdirxf+-7HeGHOv7GB5HmDhsxn9qkA@mail.gmail.com>
Subject: Re: [PATCH v7 02/12] platform: chrome: sensorhub: Add FIFO support
To: Gwendal Grignou <gwendal@chromium.org>, Matthias Kaehlcke <mka@google.com>
Cc: kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=GPRikbco;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041
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

On Mon, Mar 30, 2020 at 9:31 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Mon, Mar 30, 2020 at 12:20 AM kbuild test robot <lkp@intel.com> wrote:
> >
> > Hi Gwendal,
> >
> > Thank you for the patch! Perhaps something to improve:
> >
> > [auto build test WARNING on chrome-platform-linux/for-next]
> > [also build test WARNING on linus/master linux/master v5.6]
> > [cannot apply to iio/togreg]
> > [if your patch is applied to the wrong git tree, please drop us a note to help
> > improve the system. BTW, we also suggest to use '--base' option to specify the
> > base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
> >
> > url:    https://github.com/0day-ci/linux/commits/Gwendal-Grignou/Cros-EC-sensor-hub-FIFO-support/20200328-063655
> > base:   https://git.kernel.org/pub/scm/linux/kernel/git/chrome-platform/linux.git for-next
> > config: x86_64-randconfig-a002-20200329 (attached as .config)
>
> Looks like a randconfig build enabled gcov; maybe we have an issue
> with objtool here to resolve?

Will track here: https://github.com/ClangBuiltLinux/linux/issues/955

>
> > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project dd030036f0a2ace74d0bd2242cfdbcf726ef565d)
> > reproduce:
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # save the attached .config to linux build tree
> >         COMPILER=clang make.cross ARCH=x86_64
> >
> > If you fix the issue, kindly add following tag
> > Reported-by: kbuild test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>):
> >
> > >> drivers/platform/chrome/cros_ec_sensorhub_ring.o: warning: objtool: __llvm_gcov_writeout()+0x14: call without frame pointer save/setup
> > >> drivers/platform/chrome/cros_ec_sensorhub_ring.o: warning: objtool: __llvm_gcov_flush()+0x0: call without frame pointer save/setup
> >
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> >
> > --
> > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202003301529.ukpsA1aF%25lkp%40intel.com.
>
>
>
> --
> Thanks,
> ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DBaJz%2BnfYTeMFsvdirxf%2B-7HeGHOv7GB5HmDhsxn9qkA%40mail.gmail.com.
