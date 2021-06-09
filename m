Return-Path: <clang-built-linux+bncBDSZZEMNR4LRBQO4QKDAMGQECOU2O7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6759C3A13B5
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Jun 2021 14:04:19 +0200 (CEST)
Received: by mail-oo1-xc3b.google.com with SMTP id r17-20020a4a96510000b029024988968d95sf8200135ooi.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Jun 2021 05:04:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sTFa7QFmL0ue91BgqEwpOIrDCPW0TqxRVwOFSj6L5KA=;
        b=Lii3NfqFtJlZnVXWaXwgOCeyqURPCvvdRqgnQtqekAJTzPh8V/5N0f2jTJOn20Sx/2
         BRdZzawIP0EHlFFNk6fP4Oem9C7DAbipiuae7kEG7Wp3JBna4Ez49I1UV6UyK7bLPHQb
         G8JyMWQk3pIV/Cc7Yp0nLW+5X0ID5DOn6dNAQk19s3yQgbE7lrbPNuJ7w2n9VtNYGRQW
         snVPr0ka1/Sjlx12JLclsIDAh1KnTRMnAdYBEVSrIdbpak+sT3+rPvaWG8SE5CJj8Zk+
         leblZxXkiD92Wk7YerEhKiDtl7r08uYx81S9IoHzKfYyCWl1cfYqMZeWxrc26gou7Tl1
         eh2w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:precedence:mailing-list:list-id:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sTFa7QFmL0ue91BgqEwpOIrDCPW0TqxRVwOFSj6L5KA=;
        b=TO0a6GB1sHRj/caIxSiXivwGIWICnxM2w78lRL0lhaCIIg7erLb505S00xhYythKlz
         scU5ooJnlZnNf7H36LQFF252RAFFnV71aMihQ73w6UTgT1MCGjUYNko37KrDbvHen0xa
         nb7iJUSF0WZBNIPtH4FK7MBKfewyavWz04HZ+4/93NpfFjlMEEFpCsxQuafelHdf4VA0
         miJaIbufgg2v2GYsiEv4IFp+1pwUrzmEuQb2ANL4aDOAa94gVTytdvYwqJwwXp5/6fgW
         Xu8kXijMLk2H3m4wWcjoXQ9dMRlzQck0PHgUL7c1XlZ+2LaeWVObNpSKGQVdCeiEMvGa
         w6pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=sTFa7QFmL0ue91BgqEwpOIrDCPW0TqxRVwOFSj6L5KA=;
        b=IH1UL20g0tn2m7yg7VDyR2Fc1mYXLSAKvR4ao+DFhzQi8+/I4HHvxI/gK26RYIVqRI
         TofhTJhumu5qH7lhedWhFV8scgOU4mVZzOPLDe8NkippoOoDE9qPdjQVH0JRaXnPXHAb
         bKGGBTJ3pNv4HdRyn+FNlE/RDG0ifruy/S8wFq6obUE1L4VaVowhWL9x59N/6rhKPmfG
         ki4cxvx04INfO2kcxa6DoyFNv282oux2HBre7LxYNWro/25czZRaL9LgcSojyY7e+fPq
         Ob2lPsoLFR1Gs80rbWj+iXu8jiLNrcr4NuAgy/sb+vkkDOOYsQl0ZBUu+Eg/eb1L9aZh
         aBlg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533QNN3S6DX23xy6jDiVidC3VkmBaX8Hp8zibAttn/bTy54hoknZ
	tj88hP77QfU2ErWkl7gBkx4=
X-Google-Smtp-Source: ABdhPJxRS+Zbw8g1p+CxpJgUWpgO7IZM6OE5L8nl+l7mSZJRYOpL7mZRenoX3am/wdNmDxK70TLp5Q==
X-Received: by 2002:a05:6830:1208:: with SMTP id r8mr12012077otp.155.1623240257773;
        Wed, 09 Jun 2021 05:04:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5f05:: with SMTP id t5ls655967oib.3.gmail; Wed, 09 Jun
 2021 05:04:16 -0700 (PDT)
X-Received: by 2002:aca:f482:: with SMTP id s124mr6103674oih.167.1623240256344;
        Wed, 09 Jun 2021 05:04:16 -0700 (PDT)
Date: Wed, 9 Jun 2021 05:04:15 -0700 (PDT)
From: Jesse Chan <cjx.private@gmail.com>
To: Clang Built Linux <clang-built-linux@googlegroups.com>
Message-Id: <18fa525b-bb89-42e6-98da-f7df79858f83n@googlegroups.com>
In-Reply-To: <202106081105.1CD9907A99@keescook>
References: <8aae1be7-d9bc-8a55-0bbb-0d94e6719baf@redhat.com>
 <202106081050.623BC5C44@keescook>
 <CAKwvOdnukRtNwG+OLYakDK-9aKJX=0mCf9nA=49XxYxVUZx8zA@mail.gmail.com>
 <202106081105.1CD9907A99@keescook>
Subject: Re: Recommendation for LTO type (thin or full) to use for Fedora
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1508_1182683715.1623240255457"
X-Original-Sender: cjx.private@gmail.com
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

------=_Part_1508_1182683715.1623240255457
Content-Type: multipart/alternative; 
	boundary="----=_Part_1509_1626062084.1623240255457"

------=_Part_1509_1626062084.1623240255457
Content-Type: text/plain; charset="UTF-8"

Indeed, Android uses full LTO for production kernel [1].

From our experience with AOSP, Kernel is not part of the AOSP build 
process. It is developed and built separately and then used as prebuilt [2] 
(TARGET_PREBUILT_KERNEL or  BOARD_USES_GENERIC_KERNEL_IMAGE [3] in DT), so 
platform people probably don't have to worry too much about the increased 
build time.

Though, custom Android distributions like LineageOS did build kernel as 
part of the process [4], and the greatly increased build time is a huge 
headache, so we disable LTO when the variant is "eng" or simply use 
ThinLTO. 

Thanks,
Jesse.

[1]: https://android-review.googlesource.com/c/kernel/common/+/1621952
[2]: https://android.googlesource.com/kernel/prebuilts/5.4/arm64/+/refs/heads/master
[3]: https://android.googlesource.com/device/google/redbull/+/refs/heads/master/BoardConfig-common.mk
[4]: https://github.com/LineageOS/android_vendor_lineage/blob/lineage-18.1/build/tasks/kernel.mk

On Wednesday, June 9, 2021 Kees Cook wrote:

> On Tue, Jun 08, 2021 at 11:02:06AM -0700, Nick Desaulniers wrote: 
> > On Tue, Jun 8, 2021 at 10:51 AM Kees Cook <kees...@chromium.org> wrote: 
> > > 
> > > On Mon, Jun 07, 2021 at 12:36:23PM -0700, Tom Stellard wrote: 
> > > > I'm working on adding an option to enable LTO in the Fedora kernel 
> builds. I'm 
> > > > not sure if I should use thin or full LTO, does anyone have any 
> recommendations? 
> > > > What do most people use? 
> > > 
> > > ThinLTO is used by Android and is much less resource-heavy at build 
> > > time. Full LTO exists as an option mostly to be able to a/b test 
> results 
> > > and bugs. :) 
> > 
> > No. FullLTO is used by Android. Android Common Kernel made this Full 
> > LTO for S (within the past 2 weeks or so). Every pixel that had an 
> > LTO kernel has shipped with full LTO. 
>
> O_o 
>
> I defer to Sami, but ThinLTO is going to be much nicer on your builders. 
> :) 
>
> -- 
> Kees Cook 
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/18fa525b-bb89-42e6-98da-f7df79858f83n%40googlegroups.com.

------=_Part_1509_1626062084.1623240255457
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Indeed, Android uses full LTO for production kernel [1].<div><br></div><div=
>From our experience with AOSP, Kernel is not part of the AOSP build proces=
s. It is developed and built separately and then used as prebuilt [2] (TARG=
ET_PREBUILT_KERNEL or&nbsp;

BOARD_USES_GENERIC_KERNEL_IMAGE&nbsp;[3] in DT), so platform people probabl=
y don't have to worry too much about the increased build time.</div><div><b=
r></div><div>Though, custom Android distributions like LineageOS did build =
kernel as part of the process [4], and the greatly increased build time is =
a huge headache, so we disable LTO when the variant is "eng" or simply use =
ThinLTO.&nbsp;</div><div><br></div><div>Thanks,</div><div>Jesse.<br><div><b=
r></div><div>[1]:&nbsp;https://android-review.googlesource.com/c/kernel/com=
mon/+/1621952</div><div>[2]:&nbsp;https://android.googlesource.com/kernel/p=
rebuilts/5.4/arm64/+/refs/heads/master</div><div>[3]:&nbsp;https://android.=
googlesource.com/device/google/redbull/+/refs/heads/master/BoardConfig-comm=
on.mk</div><div>[4]:&nbsp;https://github.com/LineageOS/android_vendor_linea=
ge/blob/lineage-18.1/build/tasks/kernel.mk<br><br><div class=3D"gmail_quote=
"><div dir=3D"auto" class=3D"gmail_attr">On Wednesday, June 9, 2021 Kees Co=
ok wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin: 0 0 0=
 0.8ex; border-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;">On T=
ue, Jun 08, 2021 at 11:02:06AM -0700, Nick Desaulniers wrote:
<br>&gt; On Tue, Jun 8, 2021 at 10:51 AM Kees Cook &lt;<a href=3D"" data-em=
ail-masked=3D"" rel=3D"nofollow">kees...@chromium.org</a>&gt; wrote:
<br>&gt; &gt;
<br>&gt; &gt; On Mon, Jun 07, 2021 at 12:36:23PM -0700, Tom Stellard wrote:
<br>&gt; &gt; &gt; I'm working on adding an option to enable LTO in the Fed=
ora kernel builds.  I'm
<br>&gt; &gt; &gt; not sure if I should use thin or full LTO, does anyone h=
ave any recommendations?
<br>&gt; &gt; &gt; What do most people use?
<br>&gt; &gt;
<br>&gt; &gt; ThinLTO is used by Android and is much less resource-heavy at=
 build
<br>&gt; &gt; time. Full LTO exists as an option mostly to be able to a/b t=
est results
<br>&gt; &gt; and bugs. :)
<br>&gt;=20
<br>&gt; No. FullLTO is used by Android. Android Common Kernel made this Fu=
ll
<br>&gt; LTO for S (within the past 2 weeks or so).  Every pixel that had a=
n
<br>&gt; LTO kernel has shipped with full LTO.
<br>
<br>O_o
<br>
<br>I defer to Sami, but ThinLTO is going to be much nicer on your builders=
.
<br>:)
<br>
<br>--=20
<br>Kees Cook
<br></blockquote></div></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/18fa525b-bb89-42e6-98da-f7df79858f83n%40google=
groups.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.co=
m/d/msgid/clang-built-linux/18fa525b-bb89-42e6-98da-f7df79858f83n%40googleg=
roups.com</a>.<br />

------=_Part_1509_1626062084.1623240255457--

------=_Part_1508_1182683715.1623240255457--
