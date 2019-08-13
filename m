Return-Path: <clang-built-linux+bncBC7JPD5NQEBBBR5TZTVAKGQEFPOJQ4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AF2E8C1F1
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 22:12:56 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id t18sf81853914ybp.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 13:12:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565727175; cv=pass;
        d=google.com; s=arc-20160816;
        b=JRoLSSvswgfojFjRSMkzvGCvx3VCSpV5684d6hErPNbhpLuQcLofhhFbJhsUBZjUKT
         wVfLqooTdwDX3tAN3UNdriV/i/yPTncHtOQgTyJZ7HCW8tvmw+Lkn/ATHWb2xx8uZSRf
         yT/oD5KMKQ9rKm722XikjNxQ5pb1gjLgulPjIR+5lsUYeJVX7FC7vJPHVA41XwzwiaS2
         aMCmbhql+A4Knmq9aizfXtKKLTtbpzYH/87Mi3RlviqpvkmcRMhTjtWKsX6o8Rz9/lT4
         G02zrTykkIUtl22tMrqe9+ccsfp8/PyCixBoebBTvrfYXOFCJCU8XnrnichBn3XQ7t7/
         wrHw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=+GuKsINeCax4HSo7BS0eyEbgMXDCPYzw2b4Ja99SgqY=;
        b=HQHa/lP4Q8DExCdnoBTcJ+7FTz3xXzc5ZrgfgxfnXU+KAWMPSY7Yh704A3TtqvO3By
         9KyiG9IBZdIr2mMDBaAjPDulWqGl0Zz9PdsyHfZLgItOXMVEg7gH3/Sr+U+/76dSo2CE
         YRBNfdKwwN0Is1QBwB/5edqdUOppCZcph/OmDVa2RMVCDm9RT0HTOs1E5z386LJG5AZx
         5UYUSQRLl++SGcvOB35pwa/x+1ZNou9Xqomjy1cifGOlHOf2oSjWMRV+70do9Bm/OC14
         ayMEhkvT+S/lxGeJELF4T73z5m4sCF3LgK6Tx6JNlZKXSUg5inskW/yKwDkm8B+FBytu
         1CYw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PaRWVR3e;
       spf=pass (google.com: domain of nhuck@google.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=nhuck@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=+GuKsINeCax4HSo7BS0eyEbgMXDCPYzw2b4Ja99SgqY=;
        b=QkzHJ+nv1ACXCgw00ijYprhhq/hpfUmNpOJI0hO9V8T+ooRnj/ffkcq6Drg4UHhS8M
         mIAsBnP3sOr8Kdm/qyaz7kRTkV+ysvd0saAuft1o9i3QEOXOrRzP0NyT+28b7KvK/nFn
         rcFi5+A00CqziTkBx5CdwX9oTa3jsfIhS9yQ/jfymdJpMQT2i1kPzQa9Iof3JYFtP3No
         Kg9jqJyw+fNvXLWfFZAuVhQg8zC64j6irSKIbqi7xVCo9ACF/IbcUa62Rr6J9PVNls70
         y/7HV48odQPNjabmPjCmRQAcgkNi6w/W4vO/l58KTGki21cU3UIDoEmVjgvkG8ut4Op0
         T8ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+GuKsINeCax4HSo7BS0eyEbgMXDCPYzw2b4Ja99SgqY=;
        b=ONlNZDQHXDn3pMb4M9YdbePGvCMVmtgljMGUPHlQLfDNDTowrPH6JpCaGNMok8fjdc
         k4qdSAtdq3luFRqaN4Qp5SLd6l1ZuQz+2rLRfEAsvOZ6/K58m8XSdo/2hMqwgYmb9Rt9
         pc2BVLpHAJl4xFb9+X+t6qjOKphsaQf+HC1GQVisXgiVqI0NptX1VAJvlzqKK8o5sHPi
         5JbREVpOuawv2dH6MFEtmw2iPoAgP7NQOcJugy775Am903qFiZG2WLUhIBKYBKO5VJWT
         OLkfD319fAzkZKDfd+AF5FZxmhpR652G9EBFNJ20eDgaI4qEQvrM2bSPxdSfz1ZgOkTI
         N3uw==
X-Gm-Message-State: APjAAAVpk5tPUZxIVbKu2qvzHSZvUUfcChToPcmvDsROQEOEvvG4HC2x
	Z3UnRCPGly/2mSwnZ95s1wQ=
X-Google-Smtp-Source: APXvYqyfInwMT/bDbSS0eaK+t7Tbj/TDTXS9XbXW3rI3Bt8RY98C+90KyEbN8WZMl8e5RLc91aKrDg==
X-Received: by 2002:a5b:5ce:: with SMTP id w14mr8415159ybp.25.1565727175301;
        Tue, 13 Aug 2019 13:12:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:8544:: with SMTP id v65ls6699485ywf.16.gmail; Tue, 13
 Aug 2019 13:12:54 -0700 (PDT)
X-Received: by 2002:a81:7383:: with SMTP id o125mr17467984ywc.378.1565727174949;
        Tue, 13 Aug 2019 13:12:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565727174; cv=none;
        d=google.com; s=arc-20160816;
        b=Y+xUEk93Q9KSp58tuQWePShDpNswFikG+ossZfY45iu6p4eLtvkwUICEfzUUbfodwy
         +4tHCi8XJMYJVfKdjxuvZF8NnoF7sDv9HzcLk58S9u66p4WGFGkrIjlDVx+7Fac3XfcZ
         kslXTTQ4IuuHXaBR68/vNdrXG/PbQtnp7bvt5vs7E0Cq+6zsabUTEi/Q6NEgpsTlz2eR
         ydj/icgWBMoixYL8WVVh2Asxwvk380HmF15ridkeVmorbn47AkfObsu7EcmK6fSMQvgI
         nVS/csXhJh6TThcp308uBY5Nuz4tBmx3Ue1qwvRfg35efthAlbfdfnODjF4Ep7N1UBxK
         eEFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=3lqf1BvRkrT0zFoMbdtExl8EI7GsnY3Mh1uu1vtSvfE=;
        b=AGMMe0Trd7nbNTVLQ0WIXzFfcyl5Q68qVP1akZaexmDQbUeiZA6MEc7eMY025qpfgA
         u4zqvCQq27zKW48VWIIx84FIxFlan8tCuJKiGsl7mR+9y9Pg5n6avQ5N+RpsFSS/WdXi
         7+qzdStjmesQC8aMK4PS0ksLhBVa23YiX16TvKPY1fZ+QG4Xxk+D9RnDNzCvAwoQewpJ
         4LVFtf5kplA1/CBcGjRC5gaTor+yX3GMY7Qt1mg6vyJxDmnAuBwMGxUGqV/h1IeX/80w
         iNPSk3754KP268rHXUognAmh5Dy49U+W2ZsR9qD81pP7hi9BzO/9sApy0wGjm/nSVUrf
         0OUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PaRWVR3e;
       spf=pass (google.com: domain of nhuck@google.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=nhuck@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com. [2607:f8b0:4864:20::741])
        by gmr-mx.google.com with ESMTPS id r6si1222967ybb.1.2019.08.13.13.12.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Aug 2019 13:12:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of nhuck@google.com designates 2607:f8b0:4864:20::741 as permitted sender) client-ip=2607:f8b0:4864:20::741;
Received: by mail-qk1-x741.google.com with SMTP id g17so10049676qkk.8
        for <clang-built-linux@googlegroups.com>; Tue, 13 Aug 2019 13:12:54 -0700 (PDT)
X-Received: by 2002:ae9:ec06:: with SMTP id h6mr12020396qkg.221.1565727174451;
 Tue, 13 Aug 2019 13:12:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190613211228.34092-1-nhuck@google.com> <fd8b8a48-dfb7-1478-2d8d-0953acee39d3@linaro.org>
In-Reply-To: <fd8b8a48-dfb7-1478-2d8d-0953acee39d3@linaro.org>
From: "'Nathan Huckleberry' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 13 Aug 2019 13:12:43 -0700
Message-ID: <CAJkfWY6U3RF=2X4geFsUhFADf9x0GO8s28KQmR7TvnVgo_WTig@mail.gmail.com>
Subject: Re: [PATCH] thermal: rcar_gen3_thermal: Fix Wshift-negative-value
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: rui.zhang@intel.com, edubezval@gmail.com, linux-pm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Yoshihiro Kaneko <ykaneko0929@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: nhuck@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=PaRWVR3e;       spf=pass
 (google.com: domain of nhuck@google.com designates 2607:f8b0:4864:20::741 as
 permitted sender) smtp.mailfrom=nhuck@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nathan Huckleberry <nhuck@google.com>
Reply-To: Nathan Huckleberry <nhuck@google.com>
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

I'm not familiar enough with the code to rewrite these parts of the
driver. Silencing the warnings while maintaining the same
functionality was the goal of this patch.

On Fri, Jun 14, 2019 at 3:52 AM Daniel Lezcano
<daniel.lezcano@linaro.org> wrote:
>
>
> Hi Nathan,
>
> On 13/06/2019 23:12, Nathan Huckleberry wrote:
> > Clang produces the following warning
> >
> > vers/thermal/rcar_gen3_thermal.c:147:33: warning: shifting a negative
> > signed value is undefined [-Wshift-negative-value] / (ptat[0] - ptat[2]=
)) +
> > FIXPT_INT(TJ_3); ^~~~~~~~~~~~~~~ drivers/thermal/rcar_gen3_thermal.c:12=
6:29
> > note: expanded from macro 'FIXPT_INT' #define FIXPT_INT(_x) ((_x) <<
> > FIXPT_SHIFT) ~~~~ ^ drivers/thermal/rcar_gen3_thermal.c:150:18: warning=
:
> > shifting a negative signed value is undefined [-Wshift-negative-value]
> > tsc->tj_t - FIXPT_INT(TJ_3)); ~~~~~~~~~~~~^~~~~~~~~~~~~~~~
> >
> > Upon further investigating it looks like there is no real reason for
> > TJ_3 to be -41. Usages subtract -41, code would be cleaner to just add.
>
> All the code seems broken regarding the negative value shifting as the
> macros pass an integer:
>
> eg.
>         tsc->coef.a2 =3D FIXPT_DIV(FIXPT_INT(thcode[1] - thcode[0]),
>                                  tsc->tj_t - FIXPT_INT(ths_tj_1));
>
> thcode[1] is always < than thcode[0],
>
> thcode[1] - thcode[0] < 0
>
> FIXPT_INT(thcode[1] - thcode[0]) is undefined
>
>
> Is it done on purpose FIXPT_DIV(FIXPT_INT(thcode[1] - thcode[0]) ?
>
> Try developing the macro with the coef.a2 computation ...
>
> The code quality of this driver could be better, it deserves a rework
> IMHO ...
>
> I suggest to revert:
>
> 4eb39f79ef443fa566d36bd43f1f578d5c140305
> bdc4480a669d476814061b4da6bb006f7048c8e5
> 6a310f8f97bb8bc2e2bb9db6f49a1b8678c8d144
>
> Rework the coefficient computation and re-introduce what was reverted in
> a nicer way.
>
>
> > Fixes: 4eb39f79ef44 ("thermal: rcar_gen3_thermal: Update value of Tj_1"=
)
> > Cc: clang-built-linux@googlegroups.com
> > Link: https://github.com/ClangBuiltLinux/linux/issues/531
> > Signed-off-by: Nathan Huckleberry <nhuck@google.com>
> > ---
> >  drivers/thermal/rcar_gen3_thermal.c | 8 ++++----
> >  1 file changed, 4 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/thermal/rcar_gen3_thermal.c b/drivers/thermal/rcar=
_gen3_thermal.c
> > index a56463308694..f4b4558c08e9 100644
> > --- a/drivers/thermal/rcar_gen3_thermal.c
> > +++ b/drivers/thermal/rcar_gen3_thermal.c
> > @@ -131,7 +131,7 @@ static inline void rcar_gen3_thermal_write(struct r=
car_gen3_thermal_tsc *tsc,
> >  #define RCAR3_THERMAL_GRAN 500 /* mili Celsius */
> >
> >  /* no idea where these constants come from */
> > -#define TJ_3 -41
> > +#define TJ_3 41
> >
> >  static void rcar_gen3_thermal_calc_coefs(struct rcar_gen3_thermal_tsc =
*tsc,
> >                                        int *ptat, const int *thcode,
> > @@ -144,11 +144,11 @@ static void rcar_gen3_thermal_calc_coefs(struct r=
car_gen3_thermal_tsc *tsc,
> >        * the dividend (4095 * 4095 << 14 > INT_MAX) so keep it unscaled
> >        */
> >       tsc->tj_t =3D (FIXPT_INT((ptat[1] - ptat[2]) * 157)
> > -                  / (ptat[0] - ptat[2])) + FIXPT_INT(TJ_3);
> > +                  / (ptat[0] - ptat[2])) - FIXPT_INT(TJ_3);
> >
> >       tsc->coef.a1 =3D FIXPT_DIV(FIXPT_INT(thcode[1] - thcode[2]),
> > -                              tsc->tj_t - FIXPT_INT(TJ_3));
> > -     tsc->coef.b1 =3D FIXPT_INT(thcode[2]) - tsc->coef.a1 * TJ_3;
> > +                              tsc->tj_t + FIXPT_INT(TJ_3));
> > +     tsc->coef.b1 =3D FIXPT_INT(thcode[2]) + tsc->coef.a1 * TJ_3;
> >
> >       tsc->coef.a2 =3D FIXPT_DIV(FIXPT_INT(thcode[1] - thcode[0]),
> >                                tsc->tj_t - FIXPT_INT(ths_tj_1));
> >
>
>
> --
>  <http://www.linaro.org/> Linaro.org =E2=94=82 Open source software for A=
RM SoCs
>
> Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
> <http://twitter.com/#!/linaroorg> Twitter |
> <http://www.linaro.org/linaro-blog/> Blog
>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAJkfWY6U3RF%3D2X4geFsUhFADf9x0GO8s28KQmR7TvnVgo_WTig%40m=
ail.gmail.com.
