Return-Path: <clang-built-linux+bncBDYJPJO25UGBB2G26KAAMGQEQXQUP3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id BF5923102C9
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Feb 2021 03:28:57 +0100 (CET)
Received: by mail-pg1-x53a.google.com with SMTP id l22sf3757539pgc.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Feb 2021 18:28:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612492136; cv=pass;
        d=google.com; s=arc-20160816;
        b=JjFUdtCvXkdZRuCg6i1Uj6W3FBbP9PhyhlKoS1qNll+8S+YHt+c7bOnPC6AB4VAJEH
         Tw+iBg7K3rm+eSBU/M2alvJqhvaVJWp/5HiwftiBhSF1z9yOfXkNUyyeOYOI38uyGa8W
         kM/olv02zfPqzS3k4Z4nXMYDEluglV0SN/ls44GmfamiSb7oiYj7DRfdNU74tlVSGPbf
         46FwcV4TOiEF1+jS+I5milZISBIrP3hx/f8VQVILh922e1c6Cy7qErNR2JPFuU03m2hp
         N9H1FAE2JGodptrh06gtf2xx9BzjTttCAaxZAE58SH5BaL90DFrWdLVfLR3HhulfdXZa
         zxhw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=aCm+xcZZPZwi1lAXWCSDkjpwyxkL5GDLkvO9FfQmUmE=;
        b=GP7wJnKNxUbniWgy8RFsp9DNnJVWnzL2OQuWMO7x9M1CjcSqg7IPE6f7+NWn/jmjia
         lIryOMTvLOIYE0azNx9UgVYw23TykOS3HSMnoSC2Fi1wpheiisQtHGjHrQQDaQ2Ud2xS
         mGoOUAIS/Sm3ka0iFLOuaHmhtMQn5RsEGmfiG2BlNYgDB6Or9C/MHN89nxgv8N9oIYlH
         fNoBZTZj266pTTyOoAZzzIZBE8pInti+mD9ahpLDe3a70xePlQyWftzgyonj+Ouak6+4
         bpBE/ljE0j2t35GxKtKGMNRDcVJdopxL+Ly7L/YdbkNSPh8pkNuXAYxBPYDMXhoJOUqQ
         TD0Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BVLgl4Fn;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::536 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aCm+xcZZPZwi1lAXWCSDkjpwyxkL5GDLkvO9FfQmUmE=;
        b=dBEMHUiqPgBcCfYrAuW2QggP3ZbFBkMqQKeyQCTC41z50J6nKkKydSIYU5HueeF7KI
         PCf+6LOYZ7WfnP37iQlhCxO2Ui+SkI56ixzdL35s/kFWaTVQW/dC1Y+4XvIf9gYp+KlB
         Lg6oo22GhJofT2XDu1mCVftxFZO4OpBeDfhLevyT5EmVN3xLPQw0YkPMdOU+T/7quwKZ
         53TRYZAC98aYoN9a2ktAhPUYqDx2egXL9tQJ7PvA2zlj2v1Wf9a8iuQ2ccQmjXle4bCH
         J9vVl10Qg/6YX71H2GBOxnxdOz6WJWLfbveYGzg87Ad3sH0xRgPOCzKZcFjSk0RkpE2h
         e9LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aCm+xcZZPZwi1lAXWCSDkjpwyxkL5GDLkvO9FfQmUmE=;
        b=NC6YML4TVA5GQTnqlWO77IRKhFFy4tHtBJTQbKLPTpAkwCgQKNEMtP3mG4GdXtPj4m
         o40Y989J1TebrOPS7LEdmoEfwl2RlLLGiVS5y1ylzK59sDyMzBMC+iEfbnYTR8WE9O3F
         WqK8JSJ+oPVCgsUCjKDbZGtKv+kUvE8p813R43pgR+HSZVgzH94MiV2i8c+irImd7CIy
         66O3VjVuzQ0Gn26ITZlS2YpT6YituF+1sE+Te7xRk1Q7Z93vh+DtkduUCtlxN+QU8F/z
         t4qPdMKMQvyZHTBjEm7FFD+orzAOkk5Ey1aS3gYriYiWbkJqGDYD/9LSWBYlfukYWIGC
         9J1g==
X-Gm-Message-State: AOAM532Y2yUtzn4w05SStUq0Jt3jUnPU5PEJg+AyUVRm1a8XLZfqMvkk
	lGXE8Qr7dD4+aEzXyH9V2NU=
X-Google-Smtp-Source: ABdhPJybSdRY7HLnrUEMO84xowLzCsBi6N+AtBXAlQpmCBH2YfAMksdgEOF8EKzzY/HI5HJ/hCm64w==
X-Received: by 2002:a17:902:fe09:b029:e1:6964:98dc with SMTP id g9-20020a170902fe09b02900e1696498dcmr2252352plj.24.1612492136234;
        Thu, 04 Feb 2021 18:28:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:92d5:: with SMTP id o204ls3091873pfd.6.gmail; Thu, 04
 Feb 2021 18:28:55 -0800 (PST)
X-Received: by 2002:a63:27c5:: with SMTP id n188mr1989124pgn.193.1612492135605;
        Thu, 04 Feb 2021 18:28:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612492135; cv=none;
        d=google.com; s=arc-20160816;
        b=YdiXzmF9MRAfuGSih+jhIJE5p71YVCZvQo2FJiEQF+hQ3YS2QzKLDz/C3YxiQbapip
         0A1NbA7bmOVhipSicQ+GnIh1UyZ6bwKP6pMOqwLofwqhW3aW97joF4HCIcgQIHDBNGRB
         pdpqa7xUhiaR5NFfgk5iIvsZIzVzQCswn2YiTHK+Q+1AE7SXMZ0fejjyW2IsmJu2hBBz
         nt3rz51PmuSQLGvulVR1ubEHW9pls8g6tlQ7DJ/Yb8NHKYtxGUUnFpg0CPTbJ0m0TD42
         mUntK4y2jSNLse79ucGeRJczR6lBqlJLEhBsnU2nNpC1AcQbD1cNnkjFyo7+Ng6O3seJ
         vGsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=O+32K8J1FuFuJp94FeVklg5l032x6YYHbEjx0Aa1Mx4=;
        b=TKUNbNEw+BWTNEbLb428MwdT5NtzBi2mFVMGg2uGhL6U02raKT0vfH+cmakh5sVu4b
         eYRExO0m7UwZIFDWE+0iYGvnAx44mA0PfS1fQ2M1iXxPZI8Wq2DNPFA5tQbpeHJNkKhW
         EgWDdsrjoX1/l9bIjn8jXv3p+xrO4VxYvgXeU8Ft/mgPgd0VOVddmKFiJkcje9HRm/5A
         9MEtoPjFjG2PTVH5/d6prQpOZ0BHvZrwN3UPqBVjvmLtJWvXY539AoNc1QpxgnkV7Inq
         wdjxO9sxLSqJ1zyB4iA6ceVKFbWJfypMXXPphC26cCMaR5w712wbOtsQ35ijU57wx9kg
         YljQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BVLgl4Fn;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::536 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com. [2607:f8b0:4864:20::536])
        by gmr-mx.google.com with ESMTPS id r142si354731pfr.0.2021.02.04.18.28.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Feb 2021 18:28:55 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::536 as permitted sender) client-ip=2607:f8b0:4864:20::536;
Received: by mail-pg1-x536.google.com with SMTP id b21so3486110pgk.7
        for <clang-built-linux@googlegroups.com>; Thu, 04 Feb 2021 18:28:55 -0800 (PST)
X-Received: by 2002:a62:1896:0:b029:197:491c:be38 with SMTP id
 144-20020a6218960000b0290197491cbe38mr2172327pfy.15.1612492135071; Thu, 04
 Feb 2021 18:28:55 -0800 (PST)
MIME-Version: 1.0
References: <5877bb33-ba17-6459-410c-1c51bd193481@redhat.com>
 <CA+icZUWTia0CS5nrdGx7oE+Zj_J3oC4id6U3jpVbUgqVosoFxw@mail.gmail.com>
 <20210203220612.GA1738694@localhost> <CA+icZUVjeGq0UzCrJbf9qMYtR56woJ_XtFGiAzhvHnt0zEbD7A@mail.gmail.com>
 <20210204175010.GA2988776@localhost> <CA+icZUVV3q3Jr8HEi=LmqYucOWK8b3zOEvfGsk8Mn5FS--8bnQ@mail.gmail.com>
 <CAKwvOdmqF=wXxFgUNyjJnCPtFnMrnbnuxP2APyOLimVbBqK0JA@mail.gmail.com>
 <CANiq72kN+tpC2J4rBrtT=ANhcs6F-RTpjGPFuowW+SdFgJF6-Q@mail.gmail.com>
 <CA+icZUWPN_fjpWyQN1oW+0y0naf_iajD9TzkfyxyMmHTnaS9Nw@mail.gmail.com>
 <CAKwvOdmOKvzHOBAichsZe6HQfJ=q0j+Gp_7QkhBDAKdZE9Y3Kw@mail.gmail.com>
 <20210204223504.GA428461@localhost> <CANiq72kHrEiYi-=rU6AXfi0TbWePCgKJSoW-PJPutJbWH5E0YQ@mail.gmail.com>
 <CAKwvOdnbFxge108d1ka14WH=OJ6aqHKJa8==Kuq50RHfKWkY1Q@mail.gmail.com>
 <CANiq72nsSxCjhmOhTVXxH1qyAftRbK5db0OCR7U9YcZx81PsbA@mail.gmail.com> <CANiq72mWT25=Z+L2b=_G7u_NeEwR_CKmZCD_33iv88h5f1f=7g@mail.gmail.com>
In-Reply-To: <CANiq72mWT25=Z+L2b=_G7u_NeEwR_CKmZCD_33iv88h5f1f=7g@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 4 Feb 2021 18:28:42 -0800
Message-ID: <CAKwvOdkbkgL=XGSwXFGz7131jdrR9DY+E68H534dLnq+2qtBKA@mail.gmail.com>
Subject: =?UTF-8?B?UmU6IPCfkqUgUEFOSUNLRUQ6IFRlc3QgcmVwb3J0IGZvciBrZXJuZWwgNS4xMS4wLXJjNg==?=
	=?UTF-8?B?IChtYWlubGluZS5rZXJuZWwub3JnLWNsYW5nKQ==?=
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Nathan Chancellor <nathan@kernel.org>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Behan Webster <behanw@converseincode.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=BVLgl4Fn;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::536
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

On Thu, Feb 4, 2021 at 6:16 PM Miguel Ojeda
<miguel.ojeda.sandonis@gmail.com> wrote:
>
> On Fri, Feb 5, 2021 at 12:03 AM Miguel Ojeda
> <miguel.ojeda.sandonis@gmail.com> wrote:
> >
> > Let me know if you prefer that (I already sent the request with the
> > same name as the google groups one, but these things usually take
> > time, so I guess you have time to change).
> >
> > On one hand, linux-llvm looks best (and follows the other linux-*
> > lists). On the other, people know the project by clang-built-linux...
> > So, up to you!
>
> They are fine with both linux-llvm and clang-built-linux, so it is

Yeah, let's go for it.  The ML doesn't need to reflect the github name
or anything. linux-llvm@vger, please.

> your call. I think the rename is a good idea if you want to give a
> feeling that now there is official support for LLVM and Clang in the
> kernel (and commercially supported). For Rust for Linux, if we manage
> to mainline it, I was also thinking of a rename in the future to
> linux-rust to reflect that too.
>
> Also: do you want to try to automatically import the users? That means
> parsing the old emails and subscribing people automatically to the new
> one. It is more work for them (so let's avoid it if possible), and
> they would prefer to start fresh. I think it is a good idea anyway: a
> cleanup is always good and people may find it intrusive if they are
> subscribed automatically, but the option is there nevertheless if you
> really need it.
>
> The archival is also requested (although that is done after the ML is
> setup, by another team). It would be great if you can see if it is
> possible to download the entire list as an .mbox file -- that way we
> can migrate all the old emails for posterity. If Google Groups doesn't
> support that, perhaps Nick can find an internal way to do it ;-)

https://github.com/icy/google-group-crawler looks promising.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkbkgL%3DXGSwXFGz7131jdrR9DY%2BE68H534dLnq%2B2qtBKA%40mail.gmail.com.
