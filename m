Return-Path: <clang-built-linux+bncBDYJPJO25UGBBCMQY32QKGQENAMS4HQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DDF51C5B89
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 17:36:43 +0200 (CEST)
Received: by mail-pl1-x639.google.com with SMTP id a7sf2081180pll.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 08:36:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588693002; cv=pass;
        d=google.com; s=arc-20160816;
        b=tg0avpOXrQu/uy+HljzLnyQ9IveSUagcqFAQlKNT+gRE70hTAz3iFBiue2eXj0nJvy
         0FL0cTwAdC/3W+juehncO5vjmOcrKtaIwisA2N9yTccyC8rv27U2e/CGg5wvUvBtzVhE
         8aAMnOZAF8JJZl9GY2FWNCGaft+gYup8Uii2d28kBFEpkc05cSW4X82k3xXnPW6sy5c2
         oFs85P561KDO09pgVmV/AGLrsHToDrYPZrTq67qQ9bx4tD4ONDPflWhvKXmEdpC+5rGl
         Ke22M6AZNK6IbxUQztM3UxKBIBWn7ifDRme/QaOhgomt8WkPYmUFc5nGsIyNIwzz0eCr
         WS8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=De6sMyqvJ20l/p0s4VcNH2rvx7QqO70BMEg4wWySCX0=;
        b=GKEyFqkwt5OYVqktm4cuzqHQC5XzvoQNQPZLL4x66mf6jO+cf+laAUU1CroIQGsFIV
         U9ib7mgkDnlfE2Nq4ZFIGHEApIHSOPTDFf77yVVDpeZavmMPnyLtyZ4eC27WztEVXbWi
         bPhiEoXGjkYj0U+1qKFSyt6lrNfHMQ6Oq3LkQHffMbRFtcPfvcpMrElLGQSwdXHGED/J
         2wvZWMgGNuaP4fJ4BymKRbk9kafg8JRERo7Z+rLFszfcj/PhfiDM1AdOoN09Eo03qWAv
         yZAreb1rQXCTCNM523XM6ne6P+yKxbmEp0MJ3jzSMkoaHEIbX49rioEYEeyVFuADD/WN
         5XnA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qsSNLS2n;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=De6sMyqvJ20l/p0s4VcNH2rvx7QqO70BMEg4wWySCX0=;
        b=gWrPgwWDaMrye+2kCdN6qz1TEDW9mD5EV+/3bBYmc2UscKeGTmWWVUnmtwl2B+ZEzL
         lKgSAObnpNEamCKELb9uzDg442UIL3X3Q83TX5EWGt0AHtNX3odw+R+2SggenOpbMCC6
         AThkbnUp9yxGr6hi+Dzucqd8f+Ija0kQCYpzJI0cMPXzCWUnQCyESDO9HjQkgVtcUHvD
         cjEqnQ/1tJAztJrvxpZEcukw8+9D1JF39vtcTJwjC/CZFHmSdGcDQFVndic/GxETrrdr
         bQwaz8rw/zzBOZu5Gbou6/UR0L5+UOJT6HPYDZxhmvCxlczWVK4iNCpaSL9CSxZYa2MK
         wbHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=De6sMyqvJ20l/p0s4VcNH2rvx7QqO70BMEg4wWySCX0=;
        b=sqpDLeAanfUyIkmtqoY4azufmDlrPfpwOM2yoZeCudR7XffirsPWo4ZBPXl5BvmbTb
         ILw4PTHBDSMxLMVkDTvY1kDv9+BpsFtImk+it3VQT5yG4XvaiNiq0VjEOwCtiROXZKqq
         VuKdFEipN/zEzpii6O170cxWVGIF2/edLbEbY2hgmH0Tfv2DUomSvnn5cnlHtuJpJEdv
         k0QHhb+2TOEbjKIG0BnlVigqQnXZ2mTNJNjUO+oWUY8QluQNLIBtNxYCde+uIWAKvdWc
         rOdesAjFjxnjgECPJcasLGwiCwFSUtRbjQAs0DSYjIKOvwvSzS+N9YZUTqqPo7wDshPs
         XTkg==
X-Gm-Message-State: AGi0PuZaqO/M26Se/8+Gk6SXuOP7T5Veqr1DpR066xr91FSwmW6Mi1C1
	DkECDmKe82Eil+sm6SeZNRU=
X-Google-Smtp-Source: APiQypLLtxU/Qz085Q6hdgH7Xv4GLT/L0ofL+V5k52yq4jr3suZBbUbRjcSahKXTFJXoPRkIlu/fOQ==
X-Received: by 2002:a65:5cc2:: with SMTP id b2mr3248362pgt.7.1588693001882;
        Tue, 05 May 2020 08:36:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9a44:: with SMTP id x4ls68912pfj.9.gmail; Tue, 05 May
 2020 08:36:41 -0700 (PDT)
X-Received: by 2002:a63:484d:: with SMTP id x13mr3248426pgk.96.1588693001408;
        Tue, 05 May 2020 08:36:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588693001; cv=none;
        d=google.com; s=arc-20160816;
        b=zRfRkfy6chlRu87TINfOo94lshNWINIoDkq3ZBWPMMFUmMEpRDahawRdkTHym84QpY
         ChF2IMYixWMuqAKSlihoS4ied78IZEuoEZSCckfySh7Ko91oeSig9zI+zOyU4UWZ5UHf
         9a2HzsBuw3vOpdHobYNebjjjnb2XKYwqdrpeQ+BhHevix5bGUQZWUQAQLcxVDsYTEW9k
         BbgsgczUWi5XLOAhObfvGp9znUnu39O4FaC3QQFcQOe1MJo47vp+XFWyxS+wLkoz/h1A
         1lupq++WNEKGgEEdyn3ljXAofhOnPXwyv+xTQfZHxE6DgEViyHpplziBLMCPxksWZUaJ
         ntRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=WwxCkRHW3LLt11CwSWNDSa8Gob3WyF2l16Zu0juPB1E=;
        b=ESF6MgR0GoXixeZu66JotKLRkWuLUUzvuEIZyASfHwEnaP5tAu3uQGalBvok3Y8WLv
         jRfYeF6qBPUckQBM62AzSGq9PoJ+z7GVMb6rq5+FpzrYY/VgkL5QjY1dR9RHh8TBSOtl
         aWPk6mOnwMo2o8bdp2aofCRC48Lwz8u/ZBFJD+D0uOG4eGmiyVOQ9a/0Rj7FnG51+yo2
         02Jnb2FIU//p/vN4690Lr+OXdlM1I5ZrqkZGATkCKqIE95xRK15r4Yk9I5NIb6FFDKkr
         WmV4h15ekFY8uezEmZlHqNnNrbA6fSoJGpY7/u0gMBeBPpNuVtCCGS5ZxQIOtQDChnRb
         k90Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qsSNLS2n;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id w8si247611pjr.0.2020.05.05.08.36.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 May 2020 08:36:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id u22so930014plq.12
        for <clang-built-linux@googlegroups.com>; Tue, 05 May 2020 08:36:41 -0700 (PDT)
X-Received: by 2002:a17:902:eb54:: with SMTP id i20mr1537334pli.179.1588693000713;
 Tue, 05 May 2020 08:36:40 -0700 (PDT)
MIME-Version: 1.0
References: <20200505135513.65265-1-arnd@arndb.de> <CAHp75VfmvXotH+NRt_YnNQW8O38Gas+ZfLH00jfhytM8w7ka3w@mail.gmail.com>
 <CAK8P3a2pXZGbFvXpD5D4trGjxaie_NYi4hhUyYmKmv9A_HfRdA@mail.gmail.com>
In-Reply-To: <CAK8P3a2pXZGbFvXpD5D4trGjxaie_NYi4hhUyYmKmv9A_HfRdA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 5 May 2020 08:36:27 -0700
Message-ID: <CAKwvOd=6jdRedjhcuQ0Bsr5hJ9djp8xLpLmT-bC9Wd-1GYK1fw@mail.gmail.com>
Subject: Re: [PATCH] bitops: avoid clang shift-count-overflow warnings
To: Arnd Bergmann <arnd@arndb.de>
Cc: Andy Shevchenko <andy.shevchenko@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Christian Brauner <christian.brauner@ubuntu.com>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
	Rasmus Villemoes <linux@rasmusvillemoes.dk>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=qsSNLS2n;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644
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

On Tue, May 5, 2020 at 8:33 AM Arnd Bergmann <arnd@arndb.de> wrote:
>
> On Tue, May 5, 2020 at 4:08 PM Andy Shevchenko
> <andy.shevchenko@gmail.com> wrote:
> > On Tue, May 5, 2020 at 4:58 PM Arnd Bergmann <arnd@arndb.de> wrote:
> > > Clang normally does not warn about certain issues in inline functions when
> > > it only happens in an eliminated code path. However if something else
> > > goes wrong, it does tend to complain about the definition of hweight_long()
> > > on 32-bit targets:
> >
> > Shouldn't it be fixed in CLang?
> >
> > > include/linux/bitops.h:75:41: error: shift count >= width of type [-Werror,-Wshift-count-overflow]
> > >         return sizeof(w) == 4 ? hweight32(w) : hweight64(w);
> > >                                                ^~~~~~~~~~~~
> >
> > sizeof(w) is compile-time constant. It can easily drop the second part
> > without even looking at it.
> >
> > > Adding an explicit cast to __u64 avoids that warning and makes it easier
> > > to read other output.
> >
> > Looks like papering over the real issue.
>
> I'm not sure if there is anything to be done about it in clang, since it
> always does syntactic analysis before dead-code elimination by design.

That's pretty much it.  We had a patch to Clang to use delayed
diagnostics to delay emitting the warning in case the AST node was
dropped, but it wasn't accepted in code review.

>
> It is a bit odd though that it only prints the warning sometimes, but

Sometimes?

> I suspect this is also something that works as designed. Maybe someone
> on the clang-built-linux list knows more about the background.


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D6jdRedjhcuQ0Bsr5hJ9djp8xLpLmT-bC9Wd-1GYK1fw%40mail.gmail.com.
