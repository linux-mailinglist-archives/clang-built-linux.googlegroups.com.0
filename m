Return-Path: <clang-built-linux+bncBDYJPJO25UGBBGX4XP6QKGQEXNAXP5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 185B02B2744
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 22:43:56 +0100 (CET)
Received: by mail-oi1-x23d.google.com with SMTP id r83sf4520154oia.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 13:43:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605303835; cv=pass;
        d=google.com; s=arc-20160816;
        b=W8Jp/jm3B87RK7/b1a5PdZTa6mvEt3re8Ug5D0lpiY3pJRHSKHM8aXBDa3jWaBWjTD
         FlYAuUUN6TwMComCxnN/08YfLYmn24uAZhghmvrk+6kCUyeXFAnt9XIH7VNHL10e2h7g
         awCBIoRJjULTeFTMUQnZpo6Z9zg3RC4WkrsB5dX+EuWBtsRJmGFEqaVF/CcEPxfoQh+E
         cQcLU1VKMq+aTRUe1Q7rs/l+9nSZ2Ryz3E3w0kzEuUzORrc49YdvQ/499uXVeE59uf8j
         HXuAK2Ke56A/+EQM3dz39tLnmhYlbmVs7ESio5f4xiF6et+PpmrqqKX1f5IKyOHjMJ45
         uT5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=FJPDJ157fXw62WXYyxTkmEXGt7X6WFGIg0WFuxKZljc=;
        b=Y/k4DgDVZM6G4aubHeVAmrbXffUoKOdu8myF5XX/F3pk+IqbAAYZ5hCYcQJBxipn0l
         2Zkg+C2dIRNWEA9ZF0jEVTGVkfjgMcx1UhtsdqEO4CxypYdvgx9K522F7nCieoeY+Ut7
         ze/mSVMImw86lSaskUHOneeStx74n25Cndqhkd4Rpq9E9Dc89Nj1EEIxp/bF+vV1zC33
         B7molghVM/W5o0nAStOwLe98nUijiB9mnLevK5tMyxXQC28VbAFtrCBbl4onM591tVtP
         f1r8k5MFXCodD5HIOUlmioycqaxZa18E77FBmkSWrjVD0negG+wIynwJGrf/W6woB9vY
         U1xw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gVzDyZsD;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=FJPDJ157fXw62WXYyxTkmEXGt7X6WFGIg0WFuxKZljc=;
        b=T0KWMKPlpRiPCjmaIXTA5n8byu1EQ1Zpr9iIioKjcjC8XNk0W5c9stxiRlmTs7KK+g
         q3+/tKFtyHwdhyGzFwu1lWFtVVErSHniOXoun3MFGW5LaaqxDXRUbq5eyL1l2q42RgEd
         qh1MaZELYQAz82+yxlliSXFO9h1NzNfCjVDQZoFxeRSCtFnCpGlYf3Jj4moBpn02ZOIi
         uh7FmrZ+56vYWdO47BeJYBecDPBIb6W+2o9ZwIUToNd7h9uKXDJ5gyGfWu5vCMwIsdTj
         UX0oIcps98xtH8HA+pbusSrLndY/vls4gbffkEey2A6eq2C4CmzcIC4z1CRzwuo8tJhj
         hCqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FJPDJ157fXw62WXYyxTkmEXGt7X6WFGIg0WFuxKZljc=;
        b=uALCFyFzPX/pMxy1AtJcGaIPprl5PHlKxf3fTRyQb1aRT06eu9gIKPZGeEU2D+dTs5
         dnIrXfCZ/6yO14HlWUkAVuGNFiPpLy4Hsm3PU8yEAYL6OcvZJ28qDXMRqSUUtF6QnvC1
         ObbM5zJ9JqculoLNbt7T3qZNqML3b5VyotmDkiEO/NdF/di0UImGRDMD/WD6Xi6sFq8u
         x5m+eer+VMP624eMUtRDNH5RP+vh16GCgqKh73O3F45CSMoNcxWu1m2rKr9BUX1MUlSB
         UoAGRs3azVDaiRimEu0vV3aX4j3ej71BtdXx0vGGfgKk6SVgOI65Hanhl1ssNNiN1mkx
         tJ3A==
X-Gm-Message-State: AOAM531JCExJcuXOuaotz/gWQvGBsoGm6vZozw/P/qRGnezjaKEH2WBZ
	vwGIipbvDHUnExdJ0uQgJGE=
X-Google-Smtp-Source: ABdhPJwVyIi70W2ynyv4cfsxPUs70n9n0S8W9nHrR8xMsjaGTdz3IFTyfK9uHRLuToQdMK7Cf8sabQ==
X-Received: by 2002:aca:3d8a:: with SMTP id k132mr2811758oia.51.1605303834905;
        Fri, 13 Nov 2020 13:43:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:650b:: with SMTP id y11ls470538ooc.9.gmail; Fri, 13 Nov
 2020 13:43:54 -0800 (PST)
X-Received: by 2002:a4a:d886:: with SMTP id b6mr3115040oov.14.1605303834526;
        Fri, 13 Nov 2020 13:43:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605303834; cv=none;
        d=google.com; s=arc-20160816;
        b=scNXgJPZcVq+dkjNRGyy81SD/UcHGV5ijt89kehA6TOVQiOABxhgblZy2DMdhzLuD5
         l93AEQdLcntjzQmXJrEOaFAXGQN7dn0/mmL/55O47lDiUSdZzLAFlGOQqC9NokreQQbM
         RmoIAWZ6wStgn2gupgJJkxpRzNE0IGHdjcnPrxtNB7EE6yOOiHJ4YadDwDFeIah/QUBl
         sLT1HejHEsCAlEqWTGXNJJNnax4HI0EuuSclJPbQ5Ws10SAvdzBpp+ziKRwQdPoBEVte
         DteGbstQAp651lcIeoBT2yCoqQUouOlF++0JG8DOAMjXWNFs7bnu85RIZbRe3FQxfGVb
         bqPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Xzz/KwQRjDsEwn0F82j4uBqU0/+UAFnbqZBTV8riyPw=;
        b=hVlqXYs6tcgGXOhrxRLgx6yV/na8O/ov7wP2fthS8lp4sRvbf0o4eLAY8vjqXJrOma
         BslgPM3gCFB4m4w8sXaq2m4QxipS03JNAhfhphF7fGQUJW68p8EJypbJ4eFlVdr4hfTY
         9yjio2z9WaerjS08gVbRe08RLrOhYAlJ/loHrCMqOm1n8jQSIypvb5rXX03WsRqsby3m
         YjGzrFjYIQSM/nkEdxIK/lpWzXPQ6ekYnGhw5QOajZAhKpwGSAktqxY7bRNEAAwuqsM9
         Arkx74xnSO0LiIFkfcPrOo4VlqvTddssOQ1eVwRWvRaSgZ8L6afOTjL8VHnRTrcNgCVF
         TO7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gVzDyZsD;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id r6si1425252oth.4.2020.11.13.13.43.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Nov 2020 13:43:54 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id w4so8127809pgg.13
        for <clang-built-linux@googlegroups.com>; Fri, 13 Nov 2020 13:43:54 -0800 (PST)
X-Received: by 2002:a17:90a:4881:: with SMTP id b1mr5095932pjh.32.1605303833660;
 Fri, 13 Nov 2020 13:43:53 -0800 (PST)
MIME-Version: 1.0
References: <20201111021131.822867-1-ndesaulniers@google.com>
 <BYAPR11MB32568FEEF4CFA1C20296427B87E60@BYAPR11MB3256.namprd11.prod.outlook.com>
 <CAKwvOd=qDNnOu1oTeEN+chvfJcQSS5dxREo0JQHC=W0zhpYeLw@mail.gmail.com> <BYAPR11MB32564DD5B9D140AFE8C3D1EB87E60@BYAPR11MB3256.namprd11.prod.outlook.com>
In-Reply-To: <BYAPR11MB32564DD5B9D140AFE8C3D1EB87E60@BYAPR11MB3256.namprd11.prod.outlook.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 13 Nov 2020 13:43:42 -0800
Message-ID: <CAKwvOd=LVMV1sAyv_B84DMA2LRm_4D6b0OAitKdqZ_hxjEN7PA@mail.gmail.com>
Subject: Re: [PATCH] ACPICA: fix -Wfallthrough
To: "Moore, Robert" <robert.moore@intel.com>
Cc: "Kaneda, Erik" <erik.kaneda@intel.com>, "Wysocki, Rafael J" <rafael.j.wysocki@intel.com>, 
	"Gustavo A . R . Silva" <gustavoars@kernel.org>, 
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>, Len Brown <lenb@kernel.org>, 
	"linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>, "devel@acpica.org" <devel@acpica.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=gVzDyZsD;       spf=pass
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

On Fri, Nov 13, 2020 at 1:42 PM Moore, Robert <robert.moore@intel.com> wrot=
e:
>
>
>
> -----Original Message-----
> From: Nick Desaulniers <ndesaulniers@google.com>
> Sent: Friday, November 13, 2020 1:33 PM
> To: Moore, Robert <robert.moore@intel.com>
> Cc: Kaneda, Erik <erik.kaneda@intel.com>; Wysocki, Rafael J <rafael.j.wys=
ocki@intel.com>; Gustavo A . R . Silva <gustavoars@kernel.org>; clang-built=
-linux@googlegroups.com; Len Brown <lenb@kernel.org>; linux-acpi@vger.kerne=
l.org; devel@acpica.org; linux-kernel@vger.kernel.org
> Subject: Re: [PATCH] ACPICA: fix -Wfallthrough
>
> On Fri, Nov 13, 2020 at 1:27 PM Moore, Robert <robert.moore@intel.com> wr=
ote:
> >
> >
> >
> > -----Original Message-----
> > From: ndesaulniers via sendgmr
> > <ndesaulniers@ndesaulniers1.mtv.corp.google.com> On Behalf Of Nick
> > Desaulniers
> > Sent: Tuesday, November 10, 2020 6:12 PM
> > To: Moore, Robert <robert.moore@intel.com>; Kaneda, Erik
> > <erik.kaneda@intel.com>; Wysocki, Rafael J
> > <rafael.j.wysocki@intel.com>; Gustavo A . R . Silva
> > <gustavoars@kernel.org>
> > Cc: clang-built-linux@googlegroups.com; Nick Desaulniers
> > <ndesaulniers@google.com>; Len Brown <lenb@kernel.org>;
> > linux-acpi@vger.kernel.org; devel@acpica.org;
> > linux-kernel@vger.kernel.org
> > Subject: [PATCH] ACPICA: fix -Wfallthrough
> >
> > The "fallthrough" pseudo-keyword was added as a portable way to denote =
intentional fallthrough. This code seemed to be using a mix of fallthrough =
comments that GCC recognizes, and some kind of lint marker.
> > I'm guessing that linter hasn't been run in a while from the mixed use =
of the marker vs comments.
> >
> > /*lint -fallthrough */
> >
> > This is the lint marker
>
> Yes; but from my patch, the hunk modifying
> acpi_ex_store_object_to_node() and vsnprintf() seem to indicate that mayb=
e the linter hasn't been run in a while.
>
> Which linter is that?  I'm curious whether I should leave those be, and w=
hether we're going to have an issue between compilers and linters as to whi=
ch line/order these would need to appear on.
>
> It's an old version of PC-Lint, which we don't use anymore.

Ah, ok, I'll remove them then.

+               ACPI_FALLTHROUGH;
                /*lint -fallthrough */

should work to support both, but I'll just remove it. V2 inbound.
Thanks for the feedback!
--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOd%3DLVMV1sAyv_B84DMA2LRm_4D6b0OAitKdqZ_hxjEN7PA%40m=
ail.gmail.com.
