Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB554TX5AKGQEHAJSBJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id F40D8253ED3
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 09:19:20 +0200 (CEST)
Received: by mail-qv1-xf3a.google.com with SMTP id p15sf3657243qvv.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 00:19:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598512760; cv=pass;
        d=google.com; s=arc-20160816;
        b=u1rB5cRmNgoB5+yZMBZ4qW9mslMlYFAwCiFg840CJ+fS8cyNHrNRo8JXK743S0sXvX
         kNnnA27IAh82RYwaqNHEfteDoQm8duDx9IunHxrjWaV7KAqmggEB0y07i/e4H53W2EWq
         qmxaEM7E3yj4Mb0NFyvuZUfOIfSBrmCUfhcMTdVAb9je4TGfbgrU4V6fRzE1Au5DoxaW
         Vx8ZdUhy0SCvOs65Xs+Pqwspw4bt33R8AayXk8TUEX2UV4e1UWVXmxvMeNkKoR7REk8Y
         biWQfrmtO9KzJiA5sEXBSYgqYteVtp62Gws9r33R7FoDCR75rn/zJtzK68MV4abeJDGu
         ZnRw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=SniJWHk+SobN5loJZ9yIUPxK+sDqpIkLZuMdgkcEs0I=;
        b=ordasetZibU/P5HbSf5d7xlpZa+M4CTm2OsuVdZEuVdndGioND3v1VOyAOGfw4P5RN
         T2dKil+pwPbzKxl4rMlg4czsY0foepg9yuwb5VAuuTU/ZwU7JxeG6dxU6qWh9MeFTwSe
         5pGPxR19VsEA8dKZn4uTNwR0rhyrGCcHwVFcVs/ve/JlanB6bu42Br/biq9tzwWTRptu
         37OkCAZfYJvhPBm8+Ftrf+EOkO8kOUHKivWLf1fKYvkXElU5czj83FhGlKgVPabPotj4
         /YaUKw3A/szS5Qx5QnMNPd40HI9TFJGhz/vGwh2ArecqsC7BURldQ5XDb/zN4CzacOwq
         /N+w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vhTBCzgb;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SniJWHk+SobN5loJZ9yIUPxK+sDqpIkLZuMdgkcEs0I=;
        b=ML84nXDaAPNevQsQiUiFhxBmtgWh5GtAvnOs4mPsV06zzGhX12QR6Q+BL1RfEGsDK7
         k1Z4AjwjNC5vWONniB33vuCY7qKJkUZrDGGI0martzC9Eg1gB0YpPlsau5ELWw3a6vzr
         kntQoNCkHJJ64uDKEDqdO3BTJRUNhOzEt4U+1RSUUMogNEAxfYrPFGnMnRZC0YPe1or0
         fG8tC5WQIQdbpA4YWyR5NpsyWQKpM/XBcNrwDoDsOdAC3n4R49vxXm4cc5VRmUYCpoUn
         aWxOaOdrItFi5opp+uCk2WUvPOVFrG8UuEUNNviutfyV3ptAs8PMHTanwzkhyHBdSgXN
         clog==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SniJWHk+SobN5loJZ9yIUPxK+sDqpIkLZuMdgkcEs0I=;
        b=loisJE9Q9gTWLYbLNPTYADrj9vZkSbrVZvAvm2z5+/tltqXa0ndGqVyYcbQsHNOIQ+
         HovoXCkyTSPW6keLk/Lri8Z2x52r/ptOUfCSlLSf03M1hgArgvRGBKUMyAY4+/4hzLh3
         bPMRjioDbqdXv3kYl4LUaCQPeJrJC9R9cIN4WcO0QPio1B1o4Mt2C4Q1E25XsD5F1t4C
         2EQmvPMWQzOjvdMO5yiKxVumi9e1vS5JZqFf1ovR+z2K0AXUBaoxoZN5KJM78TuGjb5C
         TT/KU6AAO/kzKyjpfjJDwZ45WCdnZpMn0w1eRe2WouATcnrMv93LQr+CGW/Ranwjhdci
         2yAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SniJWHk+SobN5loJZ9yIUPxK+sDqpIkLZuMdgkcEs0I=;
        b=aY19VbJCa3K6hzOOWxEkfBrBhjpyy7H0Q+shlhG+Iw9EFQD0+QmgvDfyIE5v+uIJA+
         oxCYE20m6q8mp/C+cXvgoj93PnQs3eBSqiHiJQdzpF337W5I6qTBV6m2bR4pLPHEjDgG
         Rz3THKVYHEeTDMkTEpnq9dfRne8Omn0q7bfGEFmtyiTXKzwrlsAlT7YRf/u2npbCKnmO
         qhiBST1G4BCUK2AIwd9BubZ9SpFEkT8bL+eltTnrQzSJhm65csSS0XRgRMmLu5zQDkQ0
         ZcfGCDilrOIYe9vbOUZCg2UMp341qU/+o2cAcLC9XYk61HxUHD8+Rse4sAXcHXNIz0et
         JtDw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532qGpXGzwkC+iRDafjmJ5hULIom/KcIrASKACszX7T6OjIz6wyw
	OkvkbzIlN4886eibrWTQmr0=
X-Google-Smtp-Source: ABdhPJx6sPNouw/PJxTISafZZR2jihnIPPjXqLFBKjJRImgmHrjGOilRwzIJsrMzHoJtsiWyG5i3IA==
X-Received: by 2002:a37:9f48:: with SMTP id i69mr17145446qke.267.1598512760066;
        Thu, 27 Aug 2020 00:19:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:131a:: with SMTP id o26ls547314qkj.10.gmail; Thu,
 27 Aug 2020 00:19:19 -0700 (PDT)
X-Received: by 2002:a05:620a:1373:: with SMTP id d19mr15288711qkl.326.1598512759729;
        Thu, 27 Aug 2020 00:19:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598512759; cv=none;
        d=google.com; s=arc-20160816;
        b=Avs2mjPZXxKHwcg5EA/YYoeDLogl1eohm3hjEFWGKFz0eFRG/GpLiKOaCv34SlhGwo
         oE6YAulDgQrYQ/lpsCf/eDT+dZlRizC8BqbsDalIt0tT/+9OzkDc+buXrrCXLOKrfTgk
         aB8A8ifThoU1FmtqzwXNjp/v8XDtQV3yL6ziaJfhpAb5C9TrpotbKMpAKRFkTdyau30f
         Y0on3oyzmbR0/cXUW7iT4G46R0Tnc42Xux4qmsqgD15hHgkBDKhvRDbxfXcazC7iP2St
         20Pc5+fuCYZGT2Aw9F0KNUai4h4qmTLEkV91jqxIlyEi5h9xJ+ZcNvNUv+JabkzyBIMz
         S+8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=0wRVxxRBrrXGuGqR4AB9DKE0dYwS8RlpkKHyA8lloZg=;
        b=m0s2PiasTNwuu8LKxoINt5eNxf4W5jjsnhnMhdvkHROLxR/MnUhaag60AMP9yqPQvr
         F4ei6FLQ5X3pLcghCJEKmno7jS2RmeMA9FeX0SPeB2dr4vMPqpGVc+BtILZB2xH7mxds
         Hos9rifyzMFC4mEv6HGuJ0n1aZ+i2tjUiZd69TQSSy5DCymRCYsaFVcJK7Av4O2KDZQ1
         c2N0oRDfvY/HxJkC/SqH3PB3xq/KoBa6/yEblE0Wu9gKzFYBMrmyZb9DCAspzF6Qvl5G
         UfVdOmWJ9raBoZRP/3dXIkMuhZE6Vfo1ZThggD1KRLpiccoSUhFCkRamQKRGTzM/mDy9
         8dPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vhTBCzgb;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id n26si58495qkg.5.2020.08.27.00.19.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Aug 2020 00:19:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Received: by mail-oi1-x242.google.com with SMTP id 2so3817381ois.8
        for <clang-built-linux@googlegroups.com>; Thu, 27 Aug 2020 00:19:19 -0700 (PDT)
X-Received: by 2002:aca:acd5:: with SMTP id v204mr5974706oie.35.1598512759141;
 Thu, 27 Aug 2020 00:19:19 -0700 (PDT)
MIME-Version: 1.0
References: <20200826201420.3414123-1-ndesaulniers@google.com>
 <CANiq72no2qO3BBTU3MhVCp4mDLqzMg7NhWGObHV3wtFCRjaziw@mail.gmail.com> <20200826212648.GA1005132@ubuntu-n2-xlarge-x86>
In-Reply-To: <20200826212648.GA1005132@ubuntu-n2-xlarge-x86>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 27 Aug 2020 09:19:08 +0200
Message-ID: <CA+icZUX_mR6E+tO+qR4xML78qBZe2Rs4Ck7BgerwtgGaGJ9hgA@mail.gmail.com>
Subject: Re: [PATCH] compiler-clang: add build check for clang 10.0.1
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Kees Cook <keescook@chromium.org>, Marco Elver <elver@google.com>, 
	"Paul E. McKenney" <paulmck@kernel.org>, "Peter Zijlstra (Intel)" <peterz@infradead.org>, 
	Randy Dunlap <rdunlap@infradead.org>, Ingo Molnar <mingo@kernel.org>, 
	Sami Tolvanen <samitolvanen@google.com>, linux-kernel <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=vhTBCzgb;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::242
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, Aug 26, 2020 at 11:26 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Wed, Aug 26, 2020 at 11:17:34PM +0200, Miguel Ojeda wrote:
> > On Wed, Aug 26, 2020 at 10:14 PM Nick Desaulniers
> > <ndesaulniers@google.com> wrote:
> > >
> > > During Plumbers 2020, we voted to just support the latest release of
> > > Clang for now.  Add a compile time check for this.
> >
> > Since this effectively enforces a minimum version for Clang, I'd
> > also update `Documentation/process/changes.rst` and
> > `Documentation/admin-guide/README.rst` to mention this, and perhaps
> > use that as a commit title ("implement minimum version for Clang")
> > since that is the important change, not the implementation so much!
>
> I was actually going to comment on this separately but you beat me to it
> :) this patch probably should have been sent as a series with the
> Documentation update to avoid confusion for the reviewers:
>

Agreed... This patch should be combined with the other one and sent as
a patch-series.

- Sedat -

> https://lore.kernel.org/lkml/20200826191555.3350406-1-ndesaulniers@google.com/
>
> Cheers,
> Nathan
>
> > [Actually, I'd remove the particular GCC version from the
> > `admin-guide/README.rst` to avoid having the version in 2 places (that
> > doc already links to the other one), but that should be another
> > patch.]
> >
> > Reviewed-by: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
> >
> > Cheers,
> > Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUX_mR6E%2BtO%2BqR4xML78qBZe2Rs4Ck7BgerwtgGaGJ9hgA%40mail.gmail.com.
