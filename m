Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHNTTLXQKGQEBXWMKPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 19F7311034E
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Dec 2019 18:21:35 +0100 (CET)
Received: by mail-qv1-xf3d.google.com with SMTP id 75sf2635768qva.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Dec 2019 09:21:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575393694; cv=pass;
        d=google.com; s=arc-20160816;
        b=UVsVq3ksm5qtVyl1K0K4nYQOsC40mfH1Ap4A+3pTjFHL7w3jm8UE41dmnH/KeL8rCd
         gXpxwXy9kA568ZUbNXznrEvrLBICXyOaXR51adSdWvV2RE0kW0tVVjUAkCmgqDoClNce
         kd/Kp/vTqDjSFRmQb1QXZiVHGlte0sudA+hIsNH6hgvVN9YPsiR6YH2bdj0ACrJtsZVp
         Jw2Rc3a0KdsVL7S1Drf5ZNkxSEC9DHg2esOPO4tOBorQp2AS8ywRPlWrVVsnVz4k6Fyu
         0kCYd5bwgFjGit7FAQIrNTsVqWn3dTzUZ2XBGx+Nu7cf5WnQrIjacos+3sUVje6hNIRP
         moTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=h1OEtqPfx5vNStYgux80LIwRii1eq1K6kiOOmUgox+k=;
        b=RxZgxJkvmPacEUbf1YIPEBgt4ZaQpMz6siu/mEM26O8TAmdqA2W708ItBQ3DCITZY7
         /ZuJbQvUZ+UyblUbfOfGQPhqM/Ga6oNH5UbPqkaNPWGaZLIopoSlOyViKJgf8oOOSHO3
         szIACE+3Myuym1QmFkPm/JGqJkyQR4KOsjtvHAAwYGy9QVRWe+8znvvKi5+mJkAsfDg4
         8YuMP6y+C0vWpyeqP2nMvL/FcRQFUqfc2Mxbm39AWEhmWgQymUhbbSI0tWgx2/dg5yRR
         JB94hPl9AUbqHUzTnz4Sil6bTD/6fAuR7rz9xOhGT1SlYuKlCK4vVCZq/nweltANRZMn
         3uWg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bWnRa3a3;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::532 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=h1OEtqPfx5vNStYgux80LIwRii1eq1K6kiOOmUgox+k=;
        b=J9+5GLMQwEvY6yCFYUgYYtLoteYd2tzehMvCMW+sTciVeQIWax7vPHFlWztRzXwxnV
         QlhCh1fh9Wg9Ar1wY/MmqqEM7rmtP3ovprKZ5yykbcUk7JKDbRJYgNKuo6ld2CGHbIup
         R7TFPtD5Q/2JY+ewTwPLgdrYL7zanGZQEhcmYUUH42P0eE35CBv6lMWF0vGI6t+dby8f
         KpTX2Ml1unE/eESfvYdxyHlNfnkl8S9kQ+DthqaPEuEoCCyGvQQnZRd1x8642e8NsLCk
         pyshbLm3dTSYuo/c5DpnbBi1+Wfy2gfleZ+dYQX/0WVcUGN+OQPIrilv9FwOeNqWzZ1f
         F3pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=h1OEtqPfx5vNStYgux80LIwRii1eq1K6kiOOmUgox+k=;
        b=Onl/euCz2oKvIIulJZHY7zRoQmCQw0tjUaWvVL8jOg89lHUzkTXV06gdJcvHhTlQo5
         PIHIGOJqD2AkuvQ3uJhC4Q+AAdVA5mqDrHbBNVDrx8C8BzOlOadYPJHa5G/PQJmJvAFw
         w8OJtg4iKISdw30mHA9Oomo5M3S7lI/ADvQy6vfoDo6QI+awy+hxHfoxJsvbf/xzZe+k
         uYMDaBzBdmS9x6l8VPiucb1xBq+PfpLNPB+gLo0cl634zFqzg93nnjFJEbVgAFMyrWoj
         TTsZlmfG8clYGPpPv68kcEKvDYdmiaj+X8ZRMCLR+PqL/D8Ww78mOlmLbofc5AaylVXR
         Y3BQ==
X-Gm-Message-State: APjAAAVcJsXLQxvCTzznXYvzcKvUzCF7vJscdZIBY4FIxYgjYep17kQs
	LXa8OsnBCMe0nmiUmZj5r3w=
X-Google-Smtp-Source: APXvYqwcfOXRu4/LILyDu/h97mKgiApzuGZfDOdVXJRdmN9RjORoc1/mmvy9hWWkDXC4TGwiJOnYDA==
X-Received: by 2002:ac8:37b6:: with SMTP id d51mr6296480qtc.261.1575393693938;
        Tue, 03 Dec 2019 09:21:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:1301:: with SMTP id o1ls1515102qkj.16.gmail; Tue,
 03 Dec 2019 09:21:33 -0800 (PST)
X-Received: by 2002:ae9:e8d5:: with SMTP id a204mr6033433qkg.139.1575393693434;
        Tue, 03 Dec 2019 09:21:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575393693; cv=none;
        d=google.com; s=arc-20160816;
        b=Eh0Vt5f3yiPU89HmrDl98zErQj+duU70B/86wAUvSapZbKaw83oQelXHQG7Utadfag
         VyEuCcxgMthlLmq4JN3PQSdCOfXCzoEBE3Nk8ThnlJ9CjeeN0nNEg9jUCEPNWoh3oy2R
         Buv6o1F9nkGJM5rH4Bz4EgHfQ3Yw82xE5pPC5D1WHYjCeefvNIz0xEsS2t/E61AtoJU3
         CQIpW85/ciINMGRhDTJ6r/JROM+DjYeLQFxnuEoCixNHVSn3o+e5TePEKFkD4+NoxdDi
         gZdvuLHQ5Tjc3xOIpfznvbpTevXsrvyZPnBoUNto6U2hrJft/oycxdzblTSh6zN9kS8+
         6zzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=wfgJ4vx5sVXzSvURinrwo1+oDzDNrhb1jlHhElHzG24=;
        b=c2kl7orDLaOZLrtbtgoaDVCqEYm2/qUqfX5yaGurqSOXElRCBoG6vRUP3uEuzICe6C
         TUUgoyIfRetLrS5q0RchtccFRMvfWrQbESWUH00n/Utw6sh7NqWGZmbkt2JQS9cZTVqB
         0fmiJvd08bW5I15dTRrPfSdwdM30qbjcubuwPJCCTMS5o/ssLK3tet6lSQctR26f6YfK
         T16TVj/cGOodTbPxVUzUotVyGBklRPYgMRKelZ4QeVACA0jBEwD83tT8uUTujvySMX6v
         5HOuVqQtNGUDL5XrtAtVePAwhWKa8pXXgKjcwnxg5rRLE+qcFZcle8tYpRQGWQ6L2Bm+
         Zafw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bWnRa3a3;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::532 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com. [2607:f8b0:4864:20::532])
        by gmr-mx.google.com with ESMTPS id u8si179904qku.7.2019.12.03.09.21.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Dec 2019 09:21:33 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::532 as permitted sender) client-ip=2607:f8b0:4864:20::532;
Received: by mail-pg1-x532.google.com with SMTP id q127so1958822pga.4
        for <clang-built-linux@googlegroups.com>; Tue, 03 Dec 2019 09:21:33 -0800 (PST)
X-Received: by 2002:a63:4c14:: with SMTP id z20mr6433361pga.10.1575393692339;
 Tue, 03 Dec 2019 09:21:32 -0800 (PST)
MIME-Version: 1.0
References: <201911191421.oOPAr13c%lkp@intel.com> <CAKwvOd=2frrSGAh5a3NtbcXuCsn3B4xJYyFvLGftqaDmNj+AYQ@mail.gmail.com>
 <dfbc952f478c57bcc2b8ec41ef0542119785444b.camel@wdc.com> <CAKwvOdkntuMELqccE2UT9p0878OWnGLDWfqaxeB7wHSJNRXETw@mail.gmail.com>
 <07bd7e95-c28e-6890-96e6-1a1c3b97dbcd@intel.com> <CAKwvOdkoixg0D0_6F7v=PyhkgbR6UEe1CHKYM3M=5PrwtLkdgw@mail.gmail.com>
 <0960ae97-8758-628e-7c42-2d0f982c3759@intel.com>
In-Reply-To: <0960ae97-8758-628e-7c42-2d0f982c3759@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 3 Dec 2019 09:21:21 -0800
Message-ID: <CAKwvOdkJtEpd=_OVSY18nt4FBqUiJbLcOW0bB=0Qm0Tz5Va1mA@mail.gmail.com>
Subject: Re: [atishp04:efi_stub 1/1] drivers/firmware/efi/libstub/arm-stub.c:203:7:
 warning: variable 'secure_boot' is uninitialized when used here
To: Rong Chen <rong.a.chen@intel.com>
Cc: Atish Patra <Atish.Patra@wdc.com>, Philip Li <philip.li@intel.com>, 
	"kbuild-all@lists.01.org" <kbuild-all@lists.01.org>, 
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>, 
	"kbuild@lists.01.org" <kbuild@lists.01.org>, "lkp@intel.com" <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=bWnRa3a3;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::532
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

On Tue, Dec 3, 2019 at 12:52 AM Rong Chen <rong.a.chen@intel.com> wrote:
>
>
>
> On 11/26/19 2:11 AM, Nick Desaulniers wrote:
> > On Mon, Nov 25, 2019 at 12:11 AM Rong Chen <rong.a.chen@intel.com> wrote:
> >> Hi Nick,
> >>
> >> On 11/22/19 3:10 AM, Nick Desaulniers wrote:
> >>> On Wed, Nov 20, 2019 at 2:46 PM Atish Patra <Atish.Patra@wdc.com> wrote:
> >>>> On Mon, 2019-11-18 at 22:39 -0800, Nick Desaulniers wrote:
> >>>>> Atish, below is a report from 0day bot from a build with Clang. The
> >>>>> warning looks legit, can you please take a look?
> >>>>>
> >>>> Hi Nick,
> >>>> Thanks for the email. This is a work in progress branch. Is there way
> >>>> not to trigger kbuild tests on this branch ?
> >>> That's a common question that Rong or Philip can answer (I forgot what
> >>> the answer has been in the past).  Rong/Philip, it may be good to have
> >>> a URL/link that I can point people to in the future, since it's a FAQ.
> >> We have blacklisted "efi_stub" and "wip_.*" branches for Atish. In
> >> general, branches named as ".*experimental.*" or ".*dont-build"
> >> won't be tested by default. and we have a doc to introduce basic
> >> configurations: https://github.com/intel/lkp-tests/wiki/Repo-Spec
> > Thanks for the link. Looks like it doesn't mention the `wip_`
> > convention, and it says `*experiment*` (more specifically).  Would you
> > mind either adding the note about `wip_` or a new wiki page saying "If
> > you don't want 0day bot to find/test your branches, please use the
> > following naming conventions when pushing branches: XXX."  That way in
> > the future when I nag someone, and it was just an experimental branch,
> > I can just send them the link to the wiki about the convention, and
> > don't have to nag you?
> >
> >
>
> Hi Nick,
>
> Sorry for the delay,  I just got the permission to write a doc in
> github, please see
>
> https://github.com/intel/lkp-tests/wiki/LKP-FAQ#is-there-a-way-not-to-trigger-kbuild-tests-on-a-specific-branch

Thanks Rong, this is perfect. I've bookmarked it and will forward that
link when someone asks me about blacklisting branches from 0day bot in
the future.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkJtEpd%3D_OVSY18nt4FBqUiJbLcOW0bB%3D0Qm0Tz5Va1mA%40mail.gmail.com.
