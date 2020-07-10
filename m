Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBBN77UP4AKGQEWVBLUOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x339.google.com (mail-wm1-x339.google.com [IPv6:2a00:1450:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id B359121C0F4
	for <lists+clang-built-linux@lfdr.de>; Sat, 11 Jul 2020 01:54:31 +0200 (CEST)
Received: by mail-wm1-x339.google.com with SMTP id e15sf8547038wme.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 10 Jul 2020 16:54:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594425271; cv=pass;
        d=google.com; s=arc-20160816;
        b=BAdLvKKX1vX0j3DMzK5MeEoZMdgeJp17I9V6vs01vYV1QaxHXBA5MJECd9lrkgrzMv
         6KLWNbPERCGok/eR6X+bK8Rm8+x5tH3O+T0h2j84781/GXy9AH0vNJRBePlh8zOmjLWU
         A2XRFDMHHnGDPVDbxPlhZ8wJUpQ0DfHlsOOw7iQD1+YLi/8gRjY88gaSaMFAi0TD7qgc
         n1VDxA83j+2rag83lYcVo9DRqycrm97zeQRdIKJ30aqSeMXgfAV5L6M06q+D70B+JKLe
         nK5AjYhiw+LSbcEIECbXtS+HwlIbna2pKffHGTIdkmfoyKG7OmgCkMEvpEJYwmGJTQvR
         jJbA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=X9nh1DgwGu3jX4LD6dptJeBtdH3ZgmD/Wb7lKf+rOys=;
        b=Xe6rMUjiRmZAulSzRnWKuDu6m9oJvdrADNI0M7KDPWFm2kJ/mIlqhW35Pq9thbpHG8
         UzwBFrmvsW2dMcEp2ygoPpuvkzAgdv+T6A24AowjCX7jBSv7PIdxhMknAg7doOpnOLjn
         ltZ1foMhJOj2B/ovKEZm3W3oMSIVsL5rtn2EDWM4GSFoA7nSPUFaKlXaMYzUcNDLmVqE
         yYgt/0/qw2ivCTv1Sp6gn59qYljFFgpHu7zhy7lhuRPMyNBeTRbzqd1imjqaqak7IURO
         MllIf9xW+PxDGJFkxtZQSo6CwK1LskmJ25nvBu54d7sqiOJM3QvT0x8ET0TeeK5AmT1o
         gCuA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=LA1CntXR;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X9nh1DgwGu3jX4LD6dptJeBtdH3ZgmD/Wb7lKf+rOys=;
        b=mEr1yVFjn8u5kfzvWeu2aYvL8hS3hfyGEg49zLyDsS1lnrI2ytYSdlyrBDfg7sELZY
         YGARiRd4DVmj8VgSplHWY8dnrMHA5QNIdHD2zuepSm/sPH65uYoLFursPVdHjeF4+3v6
         v9ozG1E6s4IdWHf+9bnc+mIMcDn/bhLzAmucedmQLROU6HSp/44XQmhmagRSGr4GKb/m
         UVKfz9fyx+MFeR4RzqOd+5CPSS6RwJUjQxDKncp7CEHsNSf+11AeZsHMBbKulPnCvbog
         gWv8Dn2G6l7VcanEaaBjuEukl0IjEy5Qjaws+zCUrD2U1TWbBdpF0qS9A7nwTPd3S01t
         0Zkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X9nh1DgwGu3jX4LD6dptJeBtdH3ZgmD/Wb7lKf+rOys=;
        b=UkRCiVv3D+r9vmk/P8FqZwiDFr2tA44rmnMzR9UCCniYe7bBDRmj0UUr3S9h8ZmOc9
         Cc3OZRzUaqQvL9wcW94/ZaL9IRNpVM/gLqNM61WsqAL3FOfQPW0bSM0slb7GdGeCFoj3
         5P6VBaz6y902RKdrVStByJz1p2Tx3qSCZ+gZrbQPcZtpU4bnK0QYxe/rFR/9rtA9iWkF
         lxdQkS1Qf0l6Hbipvnmptd7+OxlKHJSRJBNjvy+Rl+wks4cfKoRZo8fEqrsyZ9TqwV1o
         IhbEPqnZS1cvF5QnFr2ljrJmGkokpL4q6Kb0ICNporyJ5Fo9q+kHaH1qEfWq6TeYKU27
         Kt0A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531sg5eqB8Vq7N0IYIUIw6tzq6KCwPlfwamshue3f0SyqzALpQla
	tf0WoFGAnz5w7/9f2RX5k2g=
X-Google-Smtp-Source: ABdhPJzJbSjXU522Z+y17nlG+0ysrPr+bPOuPkuQzhWm1OOyQ7wYYCc1Kt/FRzmwExtff9An8v9Faw==
X-Received: by 2002:a05:600c:2285:: with SMTP id 5mr7842875wmf.78.1594425271379;
        Fri, 10 Jul 2020 16:54:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:9ece:: with SMTP id h197ls5406371wme.1.canary-gmail;
 Fri, 10 Jul 2020 16:54:30 -0700 (PDT)
X-Received: by 2002:a1c:6788:: with SMTP id b130mr7764617wmc.100.1594425270755;
        Fri, 10 Jul 2020 16:54:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594425270; cv=none;
        d=google.com; s=arc-20160816;
        b=n9VTJNVQqur/mTCwD0DpVqdMLHz6FH1wdEGTKMF2PGvpUwnPg3b1ESIurNHfgsr8rS
         5RV9FsE7VdkpTMvr+3In+IrfzUau0vucEncKWUIVgyYncNUomSyHLy3E8qI0zs8zqllk
         mjChIlxeor85HM7pzpk5ZDUIRaaUrRIWIRl/Umkeqyubz0y3jjcyTM367LAfmeVgbIAv
         tfv/66RwFHX8NT1e/fblpIVRFwiEQ8oYHSNNR2Met42wiIYTJ14CapNs0ZbP+1MljKM7
         sipPS0W2KorNKPbPUec3mzx2LbU9NZJ/WvmVWYBnlT/138cn3oIbbtgfDV5zeKI73EoA
         +fVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=yPDc4YWgWbGk7IZLwT7LmgyK3OX3orfZrqhUS49J9i0=;
        b=Axx4jf9PaAZsbyn4dO0U8kdOqUoKRSTra6i8lmvy8ZQfXYkEHAOeS9OAMw/e578WZP
         W8hZfDRPDl0OtRLTE14onvhiEnrU7CdLhsU4kHdeGlUxt3zIi0sK/H4yNmKy84rC/EV2
         4/dyLlYAc310hp0Mb8G3LkTFbZhLViOSbWwgO/NsWRWfp6kQ35jWSBqAQ8/x9YyQQfjx
         IS8JmRyNKu/0F9VCJ4w8GvLce65sZjeaEE0oQEgIyD7+PP99WPjgoRcBw3EPVhJXubjK
         w842GuJaPz42ash0r7Bed1XyQIrh+zef93TmnVAeYVn95/AYHH44k32OOBuZL3MUFpgL
         uUOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=LA1CntXR;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com. [2a00:1450:4864:20::242])
        by gmr-mx.google.com with ESMTPS id u17si380314wrq.1.2020.07.10.16.54.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Jul 2020 16:54:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::242 as permitted sender) client-ip=2a00:1450:4864:20::242;
Received: by mail-lj1-x242.google.com with SMTP id z24so8251250ljn.8
        for <clang-built-linux@googlegroups.com>; Fri, 10 Jul 2020 16:54:30 -0700 (PDT)
X-Received: by 2002:a2e:8601:: with SMTP id a1mr38798067lji.255.1594425269891;
        Fri, 10 Jul 2020 16:54:29 -0700 (PDT)
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com. [209.85.208.172])
        by smtp.gmail.com with ESMTPSA id f14sm2705851lfa.35.2020.07.10.16.54.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Jul 2020 16:54:28 -0700 (PDT)
Received: by mail-lj1-f172.google.com with SMTP id 9so8247132ljv.5
        for <clang-built-linux@googlegroups.com>; Fri, 10 Jul 2020 16:54:28 -0700 (PDT)
X-Received: by 2002:a05:651c:1b6:: with SMTP id c22mr36528941ljn.421.1594425267920;
 Fri, 10 Jul 2020 16:54:27 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdmuYc8rW_H4aQG4DsJzho=F+djd68fp7mzmBp3-wY--Uw@mail.gmail.com>
 <20200710062803.GA1071395@kroah.com> <20200710125022.alry7wkymalmv3ge@wittgenstein>
 <20200710225934.GA16881@localhost>
In-Reply-To: <20200710225934.GA16881@localhost>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 10 Jul 2020 16:54:11 -0700
X-Gmail-Original-Message-ID: <CAHk-=wipXqemHbVnK1kQsFzGOOZ8FUXn3PKrZb5WC=KkgAjRRw@mail.gmail.com>
Message-ID: <CAHk-=wipXqemHbVnK1kQsFzGOOZ8FUXn3PKrZb5WC=KkgAjRRw@mail.gmail.com>
Subject: Re: Linux kernel in-tree Rust support
To: Josh Triplett <josh@joshtriplett.org>
Cc: Christian Brauner <christian.brauner@ubuntu.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, alex.gaynor@gmail.com, 
	Greg KH <gregkh@linuxfoundation.org>, geofft@ldpreload.com, jbaublitz@redhat.com, 
	Masahiro Yamada <masahiroy@kernel.org>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Steven Rostedt <rostedt@goodmis.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b=LA1CntXR;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

On Fri, Jul 10, 2020 at 3:59 PM Josh Triplett <josh@joshtriplett.org> wrote:
>
> As I recall, Greg's biggest condition for initial introduction of this
> was to do the same kind of "turn this Kconfig option on and turn an
> option under it off" trick that LTO uses, so that neither "make
> allnoconfig" nor "make allyesconfig" would require Rust until we've had
> plenty of time to experiment with it.

No, please make it a "is rust available" automatic config option. The
exact same way we already do the compiler versions and check for
various availability of compiler flags at config time.

See init/Kconfig for things like

  config LD_IS_LLD
          def_bool $(success,$(LD) -v | head -n 1 | grep -q LLD)

and the rust support should be similar. Something like

  config RUST_IS_AVAILABLE
          def_bool $(success,$(RUST) ..sometest..)

because I _don't_ want us to be in the situation where any new rust
support isn't even build-tested by default.

Quite the reverse. I'd want the first rust driver (or whatever) to be
introduced in such a simple format that failures will be obvious and
simple.

The _worst_ situation to be in is that s (small) group of people start
testing their very special situation, and do bad and crazy things
because "nobody else cares, it's hidden".

No, thank you.

             Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3DwipXqemHbVnK1kQsFzGOOZ8FUXn3PKrZb5WC%3DKkgAjRRw%40mail.gmail.com.
