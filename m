Return-Path: <clang-built-linux+bncBDYJPJO25UGBBE4TSXXQKGQEOUJHR2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id BE2C010EE29
	for <lists+clang-built-linux@lfdr.de>; Mon,  2 Dec 2019 18:27:49 +0100 (CET)
Received: by mail-pl1-x63f.google.com with SMTP id 30sf234336plb.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 02 Dec 2019 09:27:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575307668; cv=pass;
        d=google.com; s=arc-20160816;
        b=W6PnCDHO3l+WM52UYB+G2U9j6AS5YlZO3Yx2QzUYI/EdoGUvtxadgJBcszz3fOfCUh
         B9ojcir/1tl8LSDm/IyGlgBRjrwroSF52xSbS7z2xBj4AfgLD8MK99HWdLiJbTNktkTQ
         aUEI7aXGVQ9BhkzowD3JRLo0pdI8/hOgJPNUOpUOvQ7Ogt7F4qSHNLQcalnq7A8Wdn/o
         eFwK6pJRERyvFbsKHR3zR2W+4hndC8Rmj7jliKt011H9Uh98x3suYNQgGmqYplyaO4Xi
         tfk9OdQUgFcuvElJu7vgYkttuZTV/TBMMd+5YfLuiFJHdUDBP/W9We/auwDQfXXGRohl
         uPAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Q4AIb+vGm06O40VMzcsqMlFIvVKKLrYKVV66EHUfoRk=;
        b=NuK1/UXSLibbSY8pJwiNH/PDbnvVcgJqiDDHFfP3iiLAz/hhH9gGHaI5TPQ2MgegQY
         rm5+pehB5FiPJKbxevT7rY7F7+IeOXjX3ucuudaezLkqIY5xwp79obzaYSNcPeh+lsN2
         7ON14tVuGTjFIEhevXCWjJU4Fccaq2wKAIDPll0lUenc1lTlLzeqeSZLQ5ioYgQmQghV
         f+mkOi1xd1WdvltHridPaFlMxi3yUZmB72GY2eGVKut5OILTYkIwnWITFZUwu3TuZV+W
         vXEQtT9QpHCPqImx7rT+ADfiZYggu33dnngWDb462LQQaguNdG+0bvNjHg7BmgmaEZQc
         lLyg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=E1ZDHCEd;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q4AIb+vGm06O40VMzcsqMlFIvVKKLrYKVV66EHUfoRk=;
        b=mDcu6ZutSFEOr6ugRHU04eSwTEUuZYmS7pdxusoZWqmWCgVEt+HZeP4rPCW9U/HgCa
         KUMyg4wTu7LKobXT3nudrBfnhYQWC/31XjTRdf3PFluMFOsvqIllA278S5to4g7qIURQ
         C4zTQYREa8cnyaSv0c5YC8P2EodKfiKvd+o+kzt4VaJsye4eNyO+xKwPhXU2BJb9Z/oz
         YLN3vH3P/0RcFarfSogoO9gNnDpQE9ygN30n5n2Z1vlp0h3rA31heOr/ROQHJRmGvnPx
         T9k57vIgd1W0FR6gxixW2BWynb1iIzMFuLJO2tQ97igAB5Cfgons2qLIzmw84jRahBzW
         zC2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q4AIb+vGm06O40VMzcsqMlFIvVKKLrYKVV66EHUfoRk=;
        b=mBtxvE4EX48oXB2qI/Rqdh3FRXGRCrH3FbFfcfrrYLGjloZsEyvGoN3ZWskHeTqTSU
         LHFFn7ygFpZFTo/pHfwiCtBHnRIif4RL3bukINFY8Zur3dtv3urCo6noyvEruHx98NNh
         Tk58QLw2zFmvTojfaG3JACLzNqKkcF2D0iCl3FStD7GcniU6vSxsyIxf+qwlM42Ot07N
         P/DDT7WEriJvJNoRRsNT26hHu/H3VQPJPrMgnO7FHfv4tey0RJnCqpaY89qoEh36lv49
         lXsztIAqC6eE+/hKNIN2+T443cw/fsmxrCbXicRoYxrCRiWb1gA/tmoC2hQp2WVgy/4F
         QmOQ==
X-Gm-Message-State: APjAAAW4gjvJdl98a6rHEZC2z5cYxS8Q9F+wWmX1VvsBDgGMA7lsTaWy
	OG9UUXg0oy+25b6uKnAywXk=
X-Google-Smtp-Source: APXvYqxch839AOU2hWYldkuwNi8qwYX4/w0krFMUDi2i1gy+rwbpfZgLATvJwdh+rNt72eHaSXxGRQ==
X-Received: by 2002:a63:ea09:: with SMTP id c9mr141356pgi.232.1575307667953;
        Mon, 02 Dec 2019 09:27:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:f314:: with SMTP id ca20ls18376pjb.3.gmail; Mon, 02
 Dec 2019 09:27:47 -0800 (PST)
X-Received: by 2002:a17:902:8682:: with SMTP id g2mr323786plo.110.1575307667469;
        Mon, 02 Dec 2019 09:27:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575307667; cv=none;
        d=google.com; s=arc-20160816;
        b=RBdS0/4oQggtJyndB4s2JzGFx/OlmEPd3uQ7boCv2yHerOv2pDMiMq8mDcZxxddfod
         mmJAqAiNm0e5K3EIsfdihciUrIvLNHbR4e9NnzYHvmW1e0JoTiddY4Tej6TE8PVNfSeB
         LELuKX15UMJYn1mNcS8nweB3Meeqf8DDsG2/RQjqIlU59FeFOciD9SffGq1dGnl6mZvX
         cbOMepEiuxXus6+uIVlHOhu7Vacjn6OntS/Ej729wDnm9tbzzOa7FgTUncsAnyhqTQSZ
         u+FRXQm67VzWyBqJ2+68IXZPB4aJQC6p4zcvmRbI5xlmbV6MHpEhetfR+qs0Y84rYslc
         dhNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=orVQek45hbQSbuzOUHFucR+P4QAfww5RSJYpTiz6kMk=;
        b=aS1KZhqjk1UqSpw9tuVqXNhq9Qfh/PKoyYuiJWK5Gl/a+DbPwjk86tLzbJjCc+BDpD
         Q5DLORmfxidFmaZ8t5mPSknaAeSylI39FA9zJSy5kpi09WGTSHUhFjhWJz+QekX1lBAr
         XZRJVdfvo3fHa/YejuBGxp3xX5XCGAsun+gC97PbDkYGwPfLtiKiB9N1APe+tcTjSlE4
         iwABnulN9rMCycaz6KDYsebAPjNTpDX0xUhTQWzmXP4UH2blYePxHqN+ysCIOF68U1iB
         1cH9GXVHQ5lAx5bpCsU+2fAiE0U0vr3mTqOogAf8CSAVaVmp7HjaZkfoqE3YrwZNlhqJ
         Nm2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=E1ZDHCEd;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id v13si17520pga.4.2019.12.02.09.27.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Dec 2019 09:27:47 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id az9so198791plb.11
        for <clang-built-linux@googlegroups.com>; Mon, 02 Dec 2019 09:27:47 -0800 (PST)
X-Received: by 2002:a17:90a:1505:: with SMTP id l5mr122297pja.73.1575307666825;
 Mon, 02 Dec 2019 09:27:46 -0800 (PST)
MIME-Version: 1.0
References: <20191128033959.87715-1-pihsun@chromium.org> <d02f4eef9aa674cb36c1d90069a13e7bd02b7e40.camel@perches.com>
 <CANdKZ0eYSdPC2y5QxN1B7FshewXumrETQohbXrnvbovXMkSe9Q@mail.gmail.com>
In-Reply-To: <CANdKZ0eYSdPC2y5QxN1B7FshewXumrETQohbXrnvbovXMkSe9Q@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 2 Dec 2019 09:27:35 -0800
Message-ID: <CAKwvOd=g36hxdU-pspCf78JhLTtxTk2dvStR3SQLhTPeCrELVQ@mail.gmail.com>
Subject: Re: [PATCH RESEND] wireless: Use offsetof instead of custom macro.
To: Pi-Hsun Shih <pihsun@chromium.org>
Cc: Joe Perches <joe@perches.com>, linux-wireless@vger.kernel.org, 
	Johannes Berg <johannes@sipsolutions.net>, open list <linux-kernel@vger.kernel.org>, 
	"open list:CLANG/LLVM BUILD SUPPORT" <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=E1ZDHCEd;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641
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

On Thu, Nov 28, 2019 at 8:05 PM Pi-Hsun Shih <pihsun@chromium.org> wrote:
>
> On Thu, Nov 28, 2019 at 11:54 AM Joe Perches <joe@perches.com> wrote:
> >
> > On Thu, 2019-11-28 at 11:39 +0800, Pi-Hsun Shih wrote:
> > > Use offsetof to calculate offset of a field to take advantage of
> > > compiler built-in version when possible, and avoid UBSAN warning when
> > > compiling with Clang:
> > []
> > > diff --git a/include/uapi/linux/wireless.h b/include/uapi/linux/wireless.h
> > []
> > > @@ -1090,8 +1090,7 @@ struct iw_event {
> > >  /* iw_point events are special. First, the payload (extra data) come at
> > >   * the end of the event, so they are bigger than IW_EV_POINT_LEN. Second,
> > >   * we omit the pointer, so start at an offset. */
> > > -#define IW_EV_POINT_OFF (((char *) &(((struct iw_point *) NULL)->length)) - \
> > > -                       (char *) NULL)
> > > +#define IW_EV_POINT_OFF offsetof(struct iw_point, length)
> > >  #define IW_EV_POINT_LEN      (IW_EV_LCP_LEN + sizeof(struct iw_point) - \
> > >                        IW_EV_POINT_OFF)
> >
> > This is uapi.  Is offsetof guaranteed to be available?
>
> offsetof is already used in other uapi headers
> (include/uapi/linux/fuse.h FUSE_NAME_OFFSET).
>
> Also offsetof is also defined back in C89 standard (in stddef.h), so
> it should be widely available and should be fine to use here?
> (Should I add a #ifndef __KERNEL__ #include <stddef.h> to the file?)

Yes, please, otherwise userspace could have a
-Wimplicit-function-definition warning from including this header,
since it would look like a function call to a previously undeclared
function.

Actually, it looks like include/uapi/linux/posix_types.h includes it
unconditionally, and many other headers under include/uapi/ include
include/uapi/linux/posix_types.h (unconditionally).  So it may be ok
to just include stddef.h unconditionally, but please do so in addition
to the current diff you have.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3Dg36hxdU-pspCf78JhLTtxTk2dvStR3SQLhTPeCrELVQ%40mail.gmail.com.
