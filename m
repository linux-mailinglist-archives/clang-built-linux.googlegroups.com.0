Return-Path: <clang-built-linux+bncBDYJPJO25UGBBPPZT33QKGQEIJCHMII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id AF8861F9F46
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jun 2020 20:23:58 +0200 (CEST)
Received: by mail-qk1-x73c.google.com with SMTP id i82sf14878962qke.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jun 2020 11:23:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592245437; cv=pass;
        d=google.com; s=arc-20160816;
        b=h9uc+Nh1L9D1mtJtoaACgaQ8nKc/acpNygFz3UbvUxNM60YbOAdojDR/59HzS8dCTZ
         0v7UJu/zcIjxkc+PkEa804FjGkwqtdYoqHfhETsrvcDzYs15wDhhTn3Ha/s1QA3IB39F
         ej8Ln88Ovr8NiOh4U85tFU+/ZW9ZuowgZgRbk4JqghFUfbXKvZlTqpPDWIyyGqe39vaD
         tLPIdGg9DMCbEunppA6JnQVMrk874SlV2F6kPRVmaeyZlPv1pD8uXvjUhODO6RkpwoCK
         LRDniJoR0T7Z6pgBTIuc5lW78nL+QMIPnqeIay0/Wa2FRZ7ZaG3Flx+5wulCsnrTyg1T
         w5IQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ucdfpdU+Xb2QjoSy6aTgPuQ/8Dq1dQW9Wpl9+ef9V6E=;
        b=MUNEf0GSSd5kS0BeEhLkjACb0pVufhuxNQJOj425RZB6H7/nbqx61Cab4GkN9X9lW0
         1quh2aKCp8isoHNshfC83cF3h29W7UaDUldgSpaW1n/eeqN+SNJhTuzYigE0qH4naD+N
         LoR+TThsMdGCk2luJNiGd73D1MLxXoOLDDeZG2qwNfUREs+p5SobHyDtQJ/nerWwFfzG
         1WNDr2WKFCmOK6XFFFYhPZdlRlQs00ODX65qIP3EnUxJw3Fo+nD+wAgxfd9vScMw8tJ6
         MNMM+2lE+dUk9vRrx3QpLMvzi8HOwhyPgR2UarRTrNPa4mPdGB+5kjQ+tiIyaJXzX7mz
         Wluw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Y99O/yGX";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ucdfpdU+Xb2QjoSy6aTgPuQ/8Dq1dQW9Wpl9+ef9V6E=;
        b=QD5gMnoq0G/TP/NGV3AAxegJzfKTXb/LPVZv1NU4jOQV1l864POsKztWESlCfrrbjL
         wygLEdiyn/2YwJL1HZQmxH60oPuA9cuKwIqZtrbMWqzmVBfFbM8I6COmkgegD10V0Ok+
         OxmwUHtyPnWT7sv0FAt28Wa+0glDmBEhyfCSbguLkHBykdEoJOckyVCPfRs1ZNgDXgkk
         qHh6JowzLAuzkHD+Slb0CLSAmcSJ3KcSuyegYkQncy5/M5Gu7pKma0y8LUqGoSVpRwcy
         ciEZ61ksOB1IO0FS1nLGJyB81mgaOMjz09jUHYvij/GKqTR3H12ZzU7SReLXykFtArip
         oUZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ucdfpdU+Xb2QjoSy6aTgPuQ/8Dq1dQW9Wpl9+ef9V6E=;
        b=l/itecYR9fcP6NF4ih5/Siur5AN7PkDnGTdmn5igDdzWUQTBvL4H7eJIuhUmwsr8ho
         in+HYCxF1ZBQwKGeN8FKjSooQlsWPvWASf5Kz8kTANKlKNptfD2z/FxSrH/VSFHR4sZq
         shhmWUUbAsBlEd1gMQ+I7pUUnlcNUfzeGR3tSZJi9zKbezqRBxnra0DrDFyLGz/KpI4f
         /siMxrCkaPqQHl7JG4QV+YvDqWCE4xr9kvFam05x01pUdbZBDY4tWeJ+ZB6MYe4M11zP
         OGD/RGyOLmpodhnvTwJ7znf/xrhdg2/lFw2sWDCHDixxfS2yQuQWHE0sqCBC5dzg5wSA
         ccTg==
X-Gm-Message-State: AOAM531F07+ZLIgaMybPMdxdKcHlUX39UWVyfcBSFsfq2SLoz9vEeIpQ
	q3tX7erumAGkOF5+XHPcEY0=
X-Google-Smtp-Source: ABdhPJwzg+V+11ZxohD9vzswnD2v78obOEHVqY9UnMO7N7qELlM89FrSSHbENskPAB7I3d+KyDz5ow==
X-Received: by 2002:ac8:6ec5:: with SMTP id f5mr17453916qtv.163.1592245437688;
        Mon, 15 Jun 2020 11:23:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:b85:: with SMTP id 127ls7058498qkl.6.gmail; Mon, 15 Jun
 2020 11:23:57 -0700 (PDT)
X-Received: by 2002:a37:688e:: with SMTP id d136mr15890030qkc.486.1592245437339;
        Mon, 15 Jun 2020 11:23:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592245437; cv=none;
        d=google.com; s=arc-20160816;
        b=lAuEponq/XSeuLDuU2HpwiED+eklZDkFTARYDQ0cZNV+jlBnS8/y2dRFWmilarISuH
         ZTw6K9phpKWZWwcPeLYroI1VgB43ZjoXN+bFDBOoI4M6CxF/06A0TnZqwG1nEAE8vm6j
         3FYiHcydaaGaUaEI6uD3pRGlTnZmLQnViwKjh5ht4Rwpx71HensU3aa1IqCm2ssL6ukr
         uBoQg7G0VLzIWxWvCdpnDh74xtELckGZRZwHJgpYKAHaySnnbjau7cMBlB33n3xLWn2w
         RcIfdS5chTabmghkxvGXpxGfAczGSOmZF00ZXSIxXDH2w6WfKt4r4zsGfwiALGDk0lIi
         3TQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/VZ367eGT3ifWurfr8UHCEsC6mmGGvWYTzHujRDMm0c=;
        b=kHgcrgCUAA4p2FGl21bbacbiZG5xb2BxFfl9QLvliD1lefKDRHf4kigOKsutrcv6pD
         Unbc8LiO9Y/tlQHBe3cxO/Hu5LHnK7U2kscSdwHnXixBllNk2oohy6qWED++ASz+3Ypp
         W5ZDL7QEwz60tlmc9l+HT1y4q2Yemm+W0R1b5LkzbEKMzYpXLoEbyZN0LSS6Iw2m6/yl
         9eCjirR8nrDESB6OxNVG16TPfWcWpbYE5f7NHPINHHDVYPd4ms25nFJ/I6U8mLIv8uLd
         kEUv6mkGQEVPbUAX43MXFl7AvPJMWCfsw92/hsLWNfsSYv4bXDL3n8L6K414GYK//lDk
         3vAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Y99O/yGX";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id z202si649680qka.6.2020.06.15.11.23.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Jun 2020 11:23:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id t7so7946587pgt.3
        for <clang-built-linux@googlegroups.com>; Mon, 15 Jun 2020 11:23:57 -0700 (PDT)
X-Received: by 2002:a05:6a00:15ca:: with SMTP id o10mr24653669pfu.169.1592245436161;
 Mon, 15 Jun 2020 11:23:56 -0700 (PDT)
MIME-Version: 1.0
References: <20200615181232.119491-1-samitolvanen@google.com> <202006151113.7A2F638A7@keescook>
In-Reply-To: <202006151113.7A2F638A7@keescook>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 15 Jun 2020 11:23:44 -0700
Message-ID: <CAKwvOdkdy10K+6Jw=Sd4PxrvQgc=HssoJqJN9q8NVWkWiuZtRQ@mail.gmail.com>
Subject: Re: [PATCH] security: fix the key_permission LSM hook function type
To: Kees Cook <keescook@chromium.org>
Cc: Sami Tolvanen <samitolvanen@google.com>, James Morris <jamorris@linux.microsoft.com>, 
	David Howells <dhowells@redhat.com>, "Eric W. Biederman" <ebiederm@xmission.com>, 
	KP Singh <kpsingh@google.com>, Casey Schaufler <casey@schaufler-ca.com>, 
	Thomas Cedeno <thomascedeno@google.com>, Anders Roxell <anders.roxell@linaro.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="Y99O/yGX";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543
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

On Mon, Jun 15, 2020 at 11:21 AM Kees Cook <keescook@chromium.org> wrote:
>
> On Mon, Jun 15, 2020 at 11:12:32AM -0700, Sami Tolvanen wrote:
> > Commit 8c0637e950d6 ("keys: Make the KEY_NEED_* perms an enum rather than
> > a mask") changed the type of the key_permission callback functions, but
> > didn't change the type of the hook, which trips indirect call checking with
> > Control-Flow Integrity (CFI). This change fixes the issue by changing the
> > hook type to match the functions.
> >
> > Fixes: 8c0637e950d6 ("keys: Make the KEY_NEED_* perms an enum rather than a mask")
> > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
>
> Thanks for fixing this!
>
> Acked-by: Kees Cook <keescook@chromium.org>
>
> I wonder if there is any compiler option we can turn on to catch the
> implicit enum/int casting that would help for these kinds of things
> without absolutely exploding the build warnings.
>
> I see -Wenum-conversion, but that seems to be between enums, not between
> int.
>
> I see this, but it's external:
> https://noamlewis.wordpress.com/2017/10/05/type-safe-enums-in-c-using-a-clang-plugin/

Unfortunately, using a looser integral type is the typical workaround
for -Wenum-conversion warnings (which is on by default, GCC recently
added that flag, too).  For warning on enum to int, the kernel would
probably blow up with warnings. I don't know of any such existing
warning flag.

>
> -Kees
>
> > ---
> >  include/linux/lsm_hook_defs.h | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/include/linux/lsm_hook_defs.h b/include/linux/lsm_hook_defs.h
> > index 6791813cd439..24f6683f1cfc 100644
> > --- a/include/linux/lsm_hook_defs.h
> > +++ b/include/linux/lsm_hook_defs.h
> > @@ -360,7 +360,7 @@ LSM_HOOK(int, 0, key_alloc, struct key *key, const struct cred *cred,
> >        unsigned long flags)
> >  LSM_HOOK(void, LSM_RET_VOID, key_free, struct key *key)
> >  LSM_HOOK(int, 0, key_permission, key_ref_t key_ref, const struct cred *cred,
> > -      unsigned perm)
> > +      enum key_need_perm need_perm)
> >  LSM_HOOK(int, 0, key_getsecurity, struct key *key, char **_buffer)
> >  #endif /* CONFIG_KEYS */
> >
> >
> > base-commit: b3a9e3b9622ae10064826dccb4f7a52bd88c7407
> > --
> > 2.27.0.290.gba653c62da-goog
> >
>
> --
> Kees Cook
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006151113.7A2F638A7%40keescook.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkdy10K%2B6Jw%3DSd4PxrvQgc%3DHssoJqJN9q8NVWkWiuZtRQ%40mail.gmail.com.
