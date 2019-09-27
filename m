Return-Path: <clang-built-linux+bncBDOLFXXV6YOBBEPFWXWAKGQE4CC5AOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3c.google.com (mail-vk1-xa3c.google.com [IPv6:2607:f8b0:4864:20::a3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CA69BFD26
	for <lists+clang-built-linux@lfdr.de>; Fri, 27 Sep 2019 04:23:14 +0200 (CEST)
Received: by mail-vk1-xa3c.google.com with SMTP id q5sf1881131vkg.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Sep 2019 19:23:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569550993; cv=pass;
        d=google.com; s=arc-20160816;
        b=D6F5n0jfPQq53hKfQmLmQ/XzJmIX4THxnP9dEoU0HUIB7MbGZNGsG5YBIuZcs5BpKc
         G1JV1XyFuH0SEIRdgR1OWkc3ji2PoALNZd124fRYOyvvh0HIf6bAmPscH+zQNfVJX08N
         MvxYEYicozA90AqRRm8zEejMOWRiQHvRAmCdlTSu2h3baXaYRjdVNC51xalUNe+i9PKB
         4vn6th0Ak9J+wmVo3vuK7cju+y3cQJwaE0MD0GPic7BUXZ6iyOW7pQBFic7Hnj5t9JXq
         KRZkL4Vv+HAKwUxvltKhbmjLGeGagVqEkO6z/RLbqUTQPye7y2ddM7+Dr2m8GHx4L3tx
         hYxg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=BO1cy4EqtvxUkY0DDcIU1NBvxu4Z7FPmicb6n59McQU=;
        b=lb4/Wz1ztEcwkXiWN3aBBORYG+h+3PfIFVp1B4VOtkbt2ffn3KivhiMLDp9km90hkd
         mlW0orUr6/cDOpZKYwE5n6F0kbeyH0q6x9rZ371qssiT6vVIznIMlaZJuJ13T0A3Y3vZ
         jJBuqB7vw4i/mKvc88R3oC3U89qwW8YOp1U+xSiUSfopDLzFtz4px1Z2MyS32fv2Xwzi
         gHL/KhM3rf4ruumLfA4HvYEhy6+Hds2TNDO/GSVxK9V3YvdftTKBDx/dBeT0BUf0fTeA
         voOoqoIg0DL6TuFkVwbRmbW68okzz6ujTJeaVxE4uUN662++j7IaWFHZJxy8mTN77CS5
         pziw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="gWodwL/E";
       spf=pass (google.com: domain of navid.emamdoost@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=navid.emamdoost@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BO1cy4EqtvxUkY0DDcIU1NBvxu4Z7FPmicb6n59McQU=;
        b=UK4qWDBn2sLbC2wv3wjOeBea0rZOf8RG7Dg9wiXZF67WLLwQbSJm9dQXVBhFVouckV
         AlgZLGKeEaNfUpt9L1fDD14eG8YYAl1ttoncvvegQ21Rq2GmxECPKK2uuvkRhyjJSIk/
         V2SvLh1gSdLO4Qu7sChBYHegv9bZCU4QSogZaOIH96sYBlJFySwz/WXGTnhtWNaqcYEy
         cVrg547Mf+IdMfOV9swkg+AgmGLWAriO3geONQ9n7aXviVYE+jJFCMJ2et2wsvOQ+gW6
         2plp3w+5njSgXmGqMchIQV7HiXF8Tk+C3jxVGbBrsjOEWw8A8EGouVghLIpEBERb2g56
         Aerw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BO1cy4EqtvxUkY0DDcIU1NBvxu4Z7FPmicb6n59McQU=;
        b=F97YjS0pXeuLPgZLzyrOWm3PoOJajNcIFc4WEzhCLesm+GZN0lpDj2Cjrmp/pQsS8V
         41Q9Dk1NV3zzA3LV/AZofXF6RecWRU3gjvOIFLuXl4lIn/H9fiuj1zZYt4iHQXCmhTeJ
         OCECIR31YOHR8Cp1djMinquxdZlEV4CuBrW4oaxWLA0ogzp3/dzFGbqbHp77IRTl3i6c
         CH3C3W0XFHZyysgWSPzHfALDmcidNUN2TugVYxVPlVuN6SAKzvpRAV8hMEP8NXqbW3rR
         6FgKCRGCJ4plVfEBeRRw2aHijaesb5tDgCsBOufV7/MiCNMBHn0kQ/PF/NCECx9aGRr/
         P+dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=BO1cy4EqtvxUkY0DDcIU1NBvxu4Z7FPmicb6n59McQU=;
        b=EvuEBS3X/fLcQgNCd7HOI0cbSTLxpNSDdiFvzEHbUIEbLahRXOSqdJKNlMlIBDsIdT
         g84CsYhyKfrua2C4IQOzguHVEAwwwXD/1Jy3JyNs+445jdCNGvXJbjRt4bZBOf56LiRZ
         bmznTKn+fwnuH6mgRyJdvioUGEbSMNg9HtWfJXtNIIvf652McKmcPPcVCM+BsAjSHZxG
         RAKRU5GSjRjqUi7mH/Z30Wig6U/XDpI9oQvZDUo3x3CvbwpNeVzxQ6vyY3im+rnwrNtB
         BPcJ+ztJ7LvyYz4nxsCaQb0GB7IyKJhhARLn0ZpsXTiFieTakro5CdI7pgCBpuxU2/M8
         qVkQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU+ptH8BPz771ZpzeCpSBHbrlphIlneN2hj+NFnoRlsqiOr/FCV
	x43yknpR7tjSl4t4wS8ZpjM=
X-Google-Smtp-Source: APXvYqzxobNwiKcPg/ReVZrP05YJP7a6JStvFXEziIz3BxTI5kZuGqg07VyyYJWdb4Ruk4zRWw68mw==
X-Received: by 2002:a67:e9d3:: with SMTP id q19mr1242082vso.40.1569550993042;
        Thu, 26 Sep 2019 19:23:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:2e95:: with SMTP id u143ls118042vsu.0.gmail; Thu, 26 Sep
 2019 19:23:12 -0700 (PDT)
X-Received: by 2002:a67:c319:: with SMTP id r25mr1229463vsj.139.1569550992737;
        Thu, 26 Sep 2019 19:23:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569550992; cv=none;
        d=google.com; s=arc-20160816;
        b=0H6OrAgodZE3wDPHixbF3nb0KYMJHGcKxlwex0xYfkYqmiP2HZg73uVRwA44v9X9WU
         fPxfcchYSSPbPbTWqQq4AnuAIVqV45WrkhH4aeTL+OX/izoxgKtRmSqIRS4Jn8MHCX7L
         W8khCesbEaMXZfritIcdfpWRRN2pdUNJc8sFu6yZ3/xsB+3Pjdan1DXvJjC+3qlA60wC
         wEVVwGwmh/NzGDg/SbZQWUYjXWBcnTbUGiyOU+NOSyuGJH/PD2Vjuo54p5CXoletKsN9
         k/9Cg09I9PlJ0aQXifqrmDKKkhM5kBu5QGizsx6EYgGn4eY1f2iycOWfBszsb0032C2S
         JPnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=R20MS6q+MiUCEcAo6I2MMBfn2thVWnbCd7kEwSbBJic=;
        b=bV0IlT4ibJR7rYfhKLkLo6rnwCS2o/aLg+mZNJPFyCY9tj78W5oVr88UWV1xeZAzI2
         O9fPorOGhdoRfmszzpd1iX8GQBD7qWh0j1Ueba1so0YsZLP1LoBSBHU+zhK0o55h3W+L
         HYmoxYeNXqlp7eYDzU+Cppmd8oL4niVZEljpjcRJVKM6Yd/iqZ1CxGodExaS7FWhpnaf
         eS7HIcAHMaafKmBMZU3FZzl1OnRfTKDKQhajXhIU5vfc9pBGJPqN8cy/+TyLd49nP33u
         nAMHVfKbBOQR9iVwgbEu8c4L3MjyWe9nEZwwkUKkIa3xnC93JZOX0aBBbkqvoKrUJAUX
         +tBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="gWodwL/E";
       spf=pass (google.com: domain of navid.emamdoost@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=navid.emamdoost@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd41.google.com (mail-io1-xd41.google.com. [2607:f8b0:4864:20::d41])
        by gmr-mx.google.com with ESMTPS id u206si227730vke.2.2019.09.26.19.23.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Sep 2019 19:23:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of navid.emamdoost@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) client-ip=2607:f8b0:4864:20::d41;
Received: by mail-io1-xd41.google.com with SMTP id q1so12326319ion.1
        for <clang-built-linux@googlegroups.com>; Thu, 26 Sep 2019 19:23:12 -0700 (PDT)
X-Received: by 2002:a6b:7a06:: with SMTP id h6mr375650iom.231.1569550991977;
        Thu, 26 Sep 2019 19:23:11 -0700 (PDT)
Received: from cs-dulles.cs.umn.edu (cs-dulles.cs.umn.edu. [128.101.35.54])
        by smtp.gmail.com with ESMTPSA id d18sm715348ild.63.2019.09.26.19.23.11
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 26 Sep 2019 19:23:11 -0700 (PDT)
Date: Thu, 26 Sep 2019 21:23:09 -0500
From: Navid Emamdoost <navid.emamdoost@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: kbuild test robot <lkp@intel.com>, kbuild@01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	kbuild-all@01.org
Subject: Re:
 [linux-review:UPDATE-20190926-102833/Navid-Emamdoost/net-flow_offload-fix-memory-leak-in-nfp_abm_u32_knode_replace/20190926-025114
 1/1] drivers/net/ethernet/netronome/nfp/abm/cls.c:179:6: warning: variable
 'err' is used uninitialized whenever 'if' condition is true
Message-ID: <20190927022309.GB22969@cs-dulles.cs.umn.edu>
References: <201909261145.i92LRqMI%lkp@intel.com>
 <CAKwvOdmGbCyt-4a=6bNtzFAX21384qZLWcxQcSzH-ZD5NHbAqA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdmGbCyt-4a=6bNtzFAX21384qZLWcxQcSzH-ZD5NHbAqA@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: Navid.Emamdoost@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="gWodwL/E";       spf=pass
 (google.com: domain of navid.emamdoost@gmail.com designates
 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=navid.emamdoost@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Hi Nick,

I fixed the problem and sent v3.

Thank you,
Navid.

On Thu, Sep 26, 2019 at 10:11:30AM -0700, Nick Desaulniers wrote:
> Hi Navid,
> The below report from 0day bot looks legit. Can you please take a look?
> 
> On Wed, Sep 25, 2019 at 8:37 PM kbuild test robot <lkp@intel.com> wrote:
> >
> > CC: kbuild-all@01.org
> > TO: Navid Emamdoost <navid.emamdoost@gmail.com>
> > CC: 0day robot <lkp@intel.com>
> >
> > tree:   https://github.com/0day-ci/linux/commits/UPDATE-20190926-102833/Navid-Emamdoost/net-flow_offload-fix-memory-leak-in-nfp_abm_u32_knode_replace/20190926-025114
> > head:   ef137ff4f0b2604a086ecde7ffdd90ca905bc754
> > commit: ef137ff4f0b2604a086ecde7ffdd90ca905bc754 [1/1] net: flow_offload: fix memory leak in nfp_abm_u32_knode_replace
> > config: x86_64-rhel-7.6 (attached as .config)
> > compiler: clang version 10.0.0 (git://gitmirror/llvm_project 6023cf223446e3f7038d4b867635f47b2d26e194)
> > reproduce:
> >         git checkout ef137ff4f0b2604a086ecde7ffdd90ca905bc754
> >         # save the attached .config to linux build tree
> >         make ARCH=x86_64
> >
> > If you fix the issue, kindly add following tag
> > Reported-by: kbuild test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>):
> >
> >            ^
> >    include/linux/jhash.h:95:2: note: insert '__attribute__((fallthrough));' to silence this warning
> >            case 6:  b += (u32)k[5]<<8;     /* fall through */
> >            ^
> >            __attribute__((fallthrough));
> >    include/linux/jhash.h:95:2: note: insert 'break;' to avoid fall-through
> >            case 6:  b += (u32)k[5]<<8;     /* fall through */
> >            ^
> >            break;
> >    include/linux/jhash.h:96:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
> >            case 5:  b += k[4];             /* fall through */
> >            ^
> >    include/linux/jhash.h:96:2: note: insert '__attribute__((fallthrough));' to silence this warning
> >            case 5:  b += k[4];             /* fall through */
> >            ^
> >            __attribute__((fallthrough));
> >    include/linux/jhash.h:96:2: note: insert 'break;' to avoid fall-through
> >            case 5:  b += k[4];             /* fall through */
> >            ^
> >            break;
> >    include/linux/jhash.h:97:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
> >            case 4:  a += (u32)k[3]<<24;    /* fall through */
> >            ^
> >    include/linux/jhash.h:97:2: note: insert '__attribute__((fallthrough));' to silence this warning
> >            case 4:  a += (u32)k[3]<<24;    /* fall through */
> >            ^
> >            __attribute__((fallthrough));
> >    include/linux/jhash.h:97:2: note: insert 'break;' to avoid fall-through
> >            case 4:  a += (u32)k[3]<<24;    /* fall through */
> >            ^
> >            break;
> >    include/linux/jhash.h:98:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
> >            case 3:  a += (u32)k[2]<<16;    /* fall through */
> >            ^
> >    include/linux/jhash.h:98:2: note: insert '__attribute__((fallthrough));' to silence this warning
> >            case 3:  a += (u32)k[2]<<16;    /* fall through */
> >            ^
> >            __attribute__((fallthrough));
> >    include/linux/jhash.h:98:2: note: insert 'break;' to avoid fall-through
> >            case 3:  a += (u32)k[2]<<16;    /* fall through */
> >            ^
> >            break;
> >    include/linux/jhash.h:99:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
> >            case 2:  a += (u32)k[1]<<8;     /* fall through */
> >            ^
> >    include/linux/jhash.h:99:2: note: insert '__attribute__((fallthrough));' to silence this warning
> >            case 2:  a += (u32)k[1]<<8;     /* fall through */
> >            ^
> >            __attribute__((fallthrough));
> >    include/linux/jhash.h:99:2: note: insert 'break;' to avoid fall-through
> >            case 2:  a += (u32)k[1]<<8;     /* fall through */
> >            ^
> >            break;
> >    include/linux/jhash.h:100:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
> >            case 1:  a += k[0];
> >            ^
> >    include/linux/jhash.h:100:2: note: insert '__attribute__((fallthrough));' to silence this warning
> >            case 1:  a += k[0];
> >            ^
> >            __attribute__((fallthrough));
> >    include/linux/jhash.h:100:2: note: insert 'break;' to avoid fall-through
> >            case 1:  a += k[0];
> >            ^
> >            break;
> >    include/linux/jhash.h:102:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
> >            case 0: /* Nothing left to add */
> >            ^
> >    include/linux/jhash.h:102:2: note: insert 'break;' to avoid fall-through
> >            case 0: /* Nothing left to add */
> >            ^
> >            break;
> >    include/linux/jhash.h:136:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
> >            case 2: b += k[1];      /* fall through */
> >            ^
> >    include/linux/jhash.h:136:2: note: insert '__attribute__((fallthrough));' to silence this warning
> >            case 2: b += k[1];      /* fall through */
> >            ^
> >            __attribute__((fallthrough));
> >    include/linux/jhash.h:136:2: note: insert 'break;' to avoid fall-through
> >            case 2: b += k[1];      /* fall through */
> >            ^
> >            break;
> >    include/linux/jhash.h:137:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
> >            case 1: a += k[0];
> >            ^
> >    include/linux/jhash.h:137:2: note: insert '__attribute__((fallthrough));' to silence this warning
> >            case 1: a += k[0];
> >            ^
> >            __attribute__((fallthrough));
> >    include/linux/jhash.h:137:2: note: insert 'break;' to avoid fall-through
> >            case 1: a += k[0];
> >            ^
> >            break;
> >    include/linux/jhash.h:139:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
> >            case 0: /* Nothing left to add */
> >            ^
> >    include/linux/jhash.h:139:2: note: insert 'break;' to avoid fall-through
> >            case 0: /* Nothing left to add */
> >            ^
> >            break;
> > >> drivers/net/ethernet/netronome/nfp/abm/cls.c:179:6: warning: variable 'err' is used uninitialized whenever 'if' condition is true [-Wsometimes-uninitialized]
> >            if (!nfp_abm_u32_check_knode(alink->abm, knode, proto, extack))
> >                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    drivers/net/ethernet/netronome/nfp/abm/cls.c:228:9: note: uninitialized use occurs here
> >            return err;
> >                   ^~~
> >    drivers/net/ethernet/netronome/nfp/abm/cls.c:179:2: note: remove the 'if' if its condition is always false
> >            if (!nfp_abm_u32_check_knode(alink->abm, knode, proto, extack))
> >            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >    drivers/net/ethernet/netronome/nfp/abm/cls.c:177:9: note: initialize the variable 'err' to silence this warning
> >            int err;
> >                   ^
> >                    = 0
> >    37 warnings generated.
> >
> > vim +179 drivers/net/ethernet/netronome/nfp/abm/cls.c
> >
> > 174ab544e3bc0b Jakub Kicinski  2018-11-19  168
> > 174ab544e3bc0b Jakub Kicinski  2018-11-19  169  static int
> > 174ab544e3bc0b Jakub Kicinski  2018-11-19  170  nfp_abm_u32_knode_replace(struct nfp_abm_link *alink,
> > 174ab544e3bc0b Jakub Kicinski  2018-11-19  171                            struct tc_cls_u32_knode *knode,
> > 174ab544e3bc0b Jakub Kicinski  2018-11-19  172                            __be16 proto, struct netlink_ext_ack *extack)
> > 174ab544e3bc0b Jakub Kicinski  2018-11-19  173  {
> > 174ab544e3bc0b Jakub Kicinski  2018-11-19  174          struct nfp_abm_u32_match *match = NULL, *iter;
> > 174ab544e3bc0b Jakub Kicinski  2018-11-19  175          unsigned int tos_off;
> > 174ab544e3bc0b Jakub Kicinski  2018-11-19  176          u8 mask, val;
> > 174ab544e3bc0b Jakub Kicinski  2018-11-19  177          int err;
> > 174ab544e3bc0b Jakub Kicinski  2018-11-19  178
> > 174ab544e3bc0b Jakub Kicinski  2018-11-19 @179          if (!nfp_abm_u32_check_knode(alink->abm, knode, proto, extack))
> > 174ab544e3bc0b Jakub Kicinski  2018-11-19  180                  goto err_delete;
> > 174ab544e3bc0b Jakub Kicinski  2018-11-19  181
> > 174ab544e3bc0b Jakub Kicinski  2018-11-19  182          tos_off = proto == htons(ETH_P_IP) ? 16 : 20;
> > 174ab544e3bc0b Jakub Kicinski  2018-11-19  183
> > 174ab544e3bc0b Jakub Kicinski  2018-11-19  184          /* Extract the DSCP Class Selector bits */
> > 174ab544e3bc0b Jakub Kicinski  2018-11-19  185          val = be32_to_cpu(knode->sel->keys[0].val) >> tos_off & 0xff;
> > 174ab544e3bc0b Jakub Kicinski  2018-11-19  186          mask = be32_to_cpu(knode->sel->keys[0].mask) >> tos_off & 0xff;
> > 174ab544e3bc0b Jakub Kicinski  2018-11-19  187
> > 174ab544e3bc0b Jakub Kicinski  2018-11-19  188          /* Check if there is no conflicting mapping and find match by handle */
> > 174ab544e3bc0b Jakub Kicinski  2018-11-19  189          list_for_each_entry(iter, &alink->dscp_map, list) {
> > 174ab544e3bc0b Jakub Kicinski  2018-11-19  190                  u32 cmask;
> > 174ab544e3bc0b Jakub Kicinski  2018-11-19  191
> > 174ab544e3bc0b Jakub Kicinski  2018-11-19  192                  if (iter->handle == knode->handle) {
> > 174ab544e3bc0b Jakub Kicinski  2018-11-19  193                          match = iter;
> > 174ab544e3bc0b Jakub Kicinski  2018-11-19  194                          continue;
> > 174ab544e3bc0b Jakub Kicinski  2018-11-19  195                  }
> > 174ab544e3bc0b Jakub Kicinski  2018-11-19  196
> > 174ab544e3bc0b Jakub Kicinski  2018-11-19  197                  cmask = iter->mask & mask;
> > 174ab544e3bc0b Jakub Kicinski  2018-11-19  198                  if ((iter->val & cmask) == (val & cmask) &&
> > 174ab544e3bc0b Jakub Kicinski  2018-11-19  199                      iter->band != knode->res->classid) {
> > 174ab544e3bc0b Jakub Kicinski  2018-11-19  200                          NL_SET_ERR_MSG_MOD(extack, "conflict with already offloaded filter");
> > ef137ff4f0b260 Navid Emamdoost 2019-09-25  201                          err = -EOPNOTSUPP;
> > 174ab544e3bc0b Jakub Kicinski  2018-11-19  202                          goto err_delete;
> > 174ab544e3bc0b Jakub Kicinski  2018-11-19  203                  }
> > 174ab544e3bc0b Jakub Kicinski  2018-11-19  204          }
> > 174ab544e3bc0b Jakub Kicinski  2018-11-19  205
> > 174ab544e3bc0b Jakub Kicinski  2018-11-19  206          if (!match) {
> > 174ab544e3bc0b Jakub Kicinski  2018-11-19  207                  match = kzalloc(sizeof(*match), GFP_KERNEL);
> > ef137ff4f0b260 Navid Emamdoost 2019-09-25  208                  if (!match) {
> > ef137ff4f0b260 Navid Emamdoost 2019-09-25  209                          err = -ENOMEM;
> > ef137ff4f0b260 Navid Emamdoost 2019-09-25  210                          goto err_delete;
> > ef137ff4f0b260 Navid Emamdoost 2019-09-25  211                  }
> > ef137ff4f0b260 Navid Emamdoost 2019-09-25  212
> > 174ab544e3bc0b Jakub Kicinski  2018-11-19  213                  list_add(&match->list, &alink->dscp_map);
> > 174ab544e3bc0b Jakub Kicinski  2018-11-19  214          }
> > 174ab544e3bc0b Jakub Kicinski  2018-11-19  215          match->handle = knode->handle;
> > 174ab544e3bc0b Jakub Kicinski  2018-11-19  216          match->band = knode->res->classid;
> > 174ab544e3bc0b Jakub Kicinski  2018-11-19  217          match->mask = mask;
> > 174ab544e3bc0b Jakub Kicinski  2018-11-19  218          match->val = val;
> > 174ab544e3bc0b Jakub Kicinski  2018-11-19  219
> > 174ab544e3bc0b Jakub Kicinski  2018-11-19  220          err = nfp_abm_update_band_map(alink);
> > 174ab544e3bc0b Jakub Kicinski  2018-11-19  221          if (err)
> > 174ab544e3bc0b Jakub Kicinski  2018-11-19  222                  goto err_delete;
> > 174ab544e3bc0b Jakub Kicinski  2018-11-19  223
> > 174ab544e3bc0b Jakub Kicinski  2018-11-19  224          return 0;
> > 174ab544e3bc0b Jakub Kicinski  2018-11-19  225
> > 174ab544e3bc0b Jakub Kicinski  2018-11-19  226  err_delete:
> > 174ab544e3bc0b Jakub Kicinski  2018-11-19  227          nfp_abm_u32_knode_delete(alink, knode);
> > ef137ff4f0b260 Navid Emamdoost 2019-09-25  228          return err;
> > 174ab544e3bc0b Jakub Kicinski  2018-11-19  229  }
> > 174ab544e3bc0b Jakub Kicinski  2018-11-19  230
> >
> > :::::: The code at line 179 was first introduced by commit
> > :::::: 174ab544e3bc0b0c944b8e642618203dd0c2ecdf nfp: abm: add cls_u32 offload for simple band classification
> >
> > :::::: TO: Jakub Kicinski <jakub.kicinski@netronome.com>
> > :::::: CC: David S. Miller <davem@davemloft.net>
> >
> > ---
> > 0-DAY kernel test infrastructure                Open Source Technology Center
> > https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
> 
> 
> 
> -- 
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190927022309.GB22969%40cs-dulles.cs.umn.edu.
