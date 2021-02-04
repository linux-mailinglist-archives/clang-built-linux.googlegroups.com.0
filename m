Return-Path: <clang-built-linux+bncBDYJPJO25UGBBGHH6GAAMGQEOYABMHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id 28098310001
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 23:22:17 +0100 (CET)
Received: by mail-qk1-x73e.google.com with SMTP id q7sf4002755qkn.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Feb 2021 14:22:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612477336; cv=pass;
        d=google.com; s=arc-20160816;
        b=P4ZjKW5D2IB9tPfLigiycKJMaX7KuG4FGP6bdkPGMRf86So63XVmjQojTahviuArDx
         V668gk+Mrzq8ITYbkQw1zDOzOwJ6qF1UWKiXc1eI0dmpI7I8U3MTNfGTeLlJXR5yytCY
         GdWxot0+V6dpzCpvZ6NRn2eIBlWQXW9xEqxPKAcer3Ffey5quDKsKzAwIB4nkXh+AesA
         y6KqK3cyqaDvW5lYQ+IZqBzQfqf3FNEKuEdh+4LnHD0Q0bEK1L9prYJxLTIDzsKWfga7
         EHYPiypLpTuBmFNNVR9qPetwJv/NLboNU4lzavB+SLuMYrKYrvBOibnu3n8279A1G7HL
         FFlw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ZZhb3iFv+/EvOH988YpBAIQ1ohyJs7B6OFqA5opRk1I=;
        b=sYw9Cm1OQspS36xk1ri8RmCmBMaPVpgMhVAy3IeQAmmGBNkASgy1yEespIOdjjmamd
         Tc61nc09R/fPsLAW5EuMShIsuPMe9yH+7zY1hFKZrhV0B/sXz7rRbSun+ESAL+8vQdSh
         je/g3c8nhSTiEx6KP8NBXt0jmKLgb0BCs28xZxs0aekmwerpOIpJiCu3ZeCwFY4OoK21
         D2Ez2dG/zd4niH80vEOiXUX5WRd4DkXUtXMptA4r1peoszTlruo8Zi9Po91Hx0ZemXbW
         rztRl0YVhyVUFZwKXj7zTcwycEvn68mM6QlOB/G0mCRGOLXJ3WuGzIEmOqbW+R8vuvdd
         LReg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nJojxdL7;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::432 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZZhb3iFv+/EvOH988YpBAIQ1ohyJs7B6OFqA5opRk1I=;
        b=d956lPVrs9oOVsvnzHL0tmNt/WoRiGDP4M1SimaYPyxilv53kieJ3YgZH/Hw2iBbM3
         SVE7mDNkX0MnRCPCtVFrquomRkIfJyR4JB2y7vKE3uVPR7QcHqRubL6OBctXBt0tveUj
         n3jol+9i2Hym79qkuW5cXmeLzuuF+Zs9tkHG0GITKoF70CltmA9PADnfiCof4IolY16+
         RiBKx9dj8s6KldObiSnu0s/AQEx4pEiA3pXaTRdTKHCgy7WBHrSR0nBeAf1f56blubeM
         V8tEeaBC209Kn/iV26oNRjgBWbO7VlS6uhYJD40Pf2zTT18T/gySHyIkykhe+1agkNPX
         bT2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZZhb3iFv+/EvOH988YpBAIQ1ohyJs7B6OFqA5opRk1I=;
        b=Wl2YFALej2dduL/2L9A84wHjxuZw7ePm1/anxU7MlzZ3cZY31V45zO+PoNDf4toX13
         tOecRje7KM0kfaaFILF8+z0a92f+f7H5qU7Akai/IC4gI7UCxgML6ab/fVaiUHlYZn9v
         AL5SKBgeaB/+9eX6INMSIKgVe/WVrguGwWoAJplWOITmRpIg7gdzrmQ/D4cevYOSYzOz
         fdI1IhLy11g41q7VICl3N8c8Y0NflSUPA7RDE7zdp47EVqc4FACpFoSWWsc6yeKQjq9p
         NkrFLc+Mm7RXSBcsDmm+z2p9gXQ60jVH9gnQV/Qt60AaCs7otub+tiOotR83mM1wbWFA
         YY7g==
X-Gm-Message-State: AOAM5310Ro1fYIswh7OZC3Bnm+bbpdH8Jsaj3l0/54LLKO/YFzleOtVG
	P1gBWfxtul1geoiXy8g9GN0=
X-Google-Smtp-Source: ABdhPJxXX7LIUGJzDvWZaHKmxGYXXq2uaxsc+ARAqIg1YcIjYAs63rG7TDj7yXMw5FbV7sBUBF/Eog==
X-Received: by 2002:a0c:ee89:: with SMTP id u9mr1747087qvr.40.1612477336305;
        Thu, 04 Feb 2021 14:22:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:622a:d2:: with SMTP id p18ls2726343qtw.3.gmail; Thu, 04
 Feb 2021 14:22:15 -0800 (PST)
X-Received: by 2002:ac8:391c:: with SMTP id s28mr1811336qtb.314.1612477335877;
        Thu, 04 Feb 2021 14:22:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612477335; cv=none;
        d=google.com; s=arc-20160816;
        b=GlwKGmheYTUNt71o60Prkbhb5MvCvaKxFbri7RpPWuGZw4tN4gVDi93loP17R10bfz
         B8ve1XrlnfdHfmrYbe5tUWdw+xwzkjvxPIQ/0IYAGdiWOQk4VBWJY8TugxzIJHPHvHKZ
         yTkO/ZL5aQF8O83AlRpAwRLbOwXuh57/hugClB5T0vVogAhVXsCwZROOZgGcNi1/C1A8
         lw5Ua8MRrltCvR3aVKOQzo1Sypi1AvL+WoIYCOyrwOJVrLaqP22l676/iHYr8P6IuG8b
         +vbCCKnrfWj0BhCCEgmGl8cgOdA40yGaEH9xbhcX43sLTDBJAP19YCLVH+QWZ5bPiBTp
         TqDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=O7SSlO6mbLLX43ttLY9D5INEpt4ByU8WF+aF5UD+qms=;
        b=RDvHubYqw6NlNpAUGaJn4Y0vYCU6uZ2VBMFr84cmUTl8POPEJris0quAes6cuYcOyV
         TWKBzob0kmGFe209EY8Dgj4Ml1BBuBhylVi3WYln6LwB3HyVU28zYkApHIc4J2/YfH3Y
         ffHt3Ss6bE/lI2VOwMj75LkzEEwBUCEbNCof+yRMkOKyUctFDJsKXGllGJ9WuD5ueJUE
         UtXQCTu+l/vEYCi4pbDgA1Q3I906BqfIF8eMhesh6BCSPB2o3RFzRMkc/IQYLnCgrN7j
         fPX3ake/bnsXIawnL8Ww2QgKrbUK0YZnazj3HWeskDgXlTOP9mKxHhieKvQMEjWr7t6L
         ddVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nJojxdL7;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::432 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com. [2607:f8b0:4864:20::432])
        by gmr-mx.google.com with ESMTPS id e14si105953qtx.4.2021.02.04.14.22.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Feb 2021 14:22:15 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::432 as permitted sender) client-ip=2607:f8b0:4864:20::432;
Received: by mail-pf1-x432.google.com with SMTP id o20so3026576pfu.0
        for <clang-built-linux@googlegroups.com>; Thu, 04 Feb 2021 14:22:15 -0800 (PST)
X-Received: by 2002:aa7:9f5a:0:b029:1d4:fa02:a044 with SMTP id
 h26-20020aa79f5a0000b02901d4fa02a044mr1317236pfr.30.1612477334803; Thu, 04
 Feb 2021 14:22:14 -0800 (PST)
MIME-Version: 1.0
References: <cki.C90653A6EF.V9S14CF2MY@redhat.com> <20210203180333.GA765672@localhost>
 <5877bb33-ba17-6459-410c-1c51bd193481@redhat.com> <CA+icZUWTia0CS5nrdGx7oE+Zj_J3oC4id6U3jpVbUgqVosoFxw@mail.gmail.com>
 <20210203220612.GA1738694@localhost> <CA+icZUVjeGq0UzCrJbf9qMYtR56woJ_XtFGiAzhvHnt0zEbD7A@mail.gmail.com>
 <20210204175010.GA2988776@localhost> <CA+icZUVV3q3Jr8HEi=LmqYucOWK8b3zOEvfGsk8Mn5FS--8bnQ@mail.gmail.com>
 <CAKwvOdmqF=wXxFgUNyjJnCPtFnMrnbnuxP2APyOLimVbBqK0JA@mail.gmail.com>
 <CANiq72kN+tpC2J4rBrtT=ANhcs6F-RTpjGPFuowW+SdFgJF6-Q@mail.gmail.com> <CA+icZUWPN_fjpWyQN1oW+0y0naf_iajD9TzkfyxyMmHTnaS9Nw@mail.gmail.com>
In-Reply-To: <CA+icZUWPN_fjpWyQN1oW+0y0naf_iajD9TzkfyxyMmHTnaS9Nw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 4 Feb 2021 14:22:02 -0800
Message-ID: <CAKwvOdmOKvzHOBAichsZe6HQfJ=q0j+Gp_7QkhBDAKdZE9Y3Kw@mail.gmail.com>
Subject: =?UTF-8?B?UmU6IPCfkqUgUEFOSUNLRUQ6IFRlc3QgcmVwb3J0IGZvciBrZXJuZWwgNS4xMS4wLXJjNg==?=
	=?UTF-8?B?IChtYWlubGluZS5rZXJuZWwub3JnLWNsYW5nKQ==?=
To: Sedat Dilek <sedat.dilek@gmail.com>, Nathan Chancellor <nathan@kernel.org>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=nJojxdL7;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::432
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

Moving our CKI friends to BCC, which I perhaps should have done sooner.

On Thu, Feb 4, 2021 at 1:26 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Thu, Feb 4, 2021 at 10:03 PM Miguel Ojeda
> <miguel.ojeda.sandonis@gmail.com> wrote:
> >
> > On Thu, Feb 4, 2021 at 7:09 PM 'Nick Desaulniers' via Clang Built
> > Linux <clang-built-linux@googlegroups.com> wrote:
> > >
> > > We can move to vger+lore. Google groups was faster to setup, but has
> > > many downsides.  I don't have resources to pursue archiving the
> > > existing list, and corralling the folks to set up vger and lore, but I
> > > can point people in the right direction and would be supportive.
> >
> > I can submit the request like I did for Rust for Linux if you want.

If Nathan's cool with it, I would appreciate it.  I'm proud that we
have folks that would volunteer to do so, and more than happy to owe
more beers.  I look forward to buying those! Being cooped up for so
long due to the pandemic has given me cabin fever.

> >
>
> +1
>
> I am fine with that move to vger + lore.
>
> - Sedat -



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmOKvzHOBAichsZe6HQfJ%3Dq0j%2BGp_7QkhBDAKdZE9Y3Kw%40mail.gmail.com.
