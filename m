Return-Path: <clang-built-linux+bncBDRZHGH43YJRB7PHX6CQMGQE37DRWPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id D800939364E
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 May 2021 21:33:18 +0200 (CEST)
Received: by mail-qt1-x83a.google.com with SMTP id d7-20020ac811870000b02901e65f85117bsf760587qtj.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 May 2021 12:33:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622143997; cv=pass;
        d=google.com; s=arc-20160816;
        b=PJH0iNof5ZibV5QvUXNikgYv5wDrPhxJWlmG8m1FEQT/jvM6Ls1iJ79H7xZ9NRQJOs
         vt/lYJcCQczPLV3W1kmC3tYAmNVDhv66STxb2UYG5pHR13dqE4slzQOZnw6YIW4fjuny
         qOL5hwhCU+S923R0elixCQpN8qCsd5s0gKCnjEgXJFNjOr498dEi3d68Pfuhp2yqLq6w
         dsAW1rpIGZahVTManJgyLp/Thgf0kh1JNhym6xOJBrDYp/lSltJaqomW56NSBLBOrOlL
         QJNaEpHq+TfOVAD1BstRB2EJD8URNgg64VYIZAgxjed5P99ur6qyeOqlQ83cl775n8yd
         Z5gQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=fayo7pMdGatGZOu6EJ32YSXjiWWvUALBrtUrdmPLWN4=;
        b=Fv97SrmjVqKhwAuX8jb6ifRyqMD0UITK9wFVQ4EkSi+JfFFda/ew+WWBCYr89CyCKk
         TlrtKp/RxtYNz3YlpWTNCEu5DENQoEqyY4xisEAsfJbpHqBw8ogLW9RtzKSQ0XNTBfy5
         Um1U0JCJJErqZQN5x32BlKcD/NBp6qitt0aOR6r9Wg1twiZGVDf//l8ckX+SpEHC72AV
         w6WKwVAQ1zaBTJM31QdRYxQFouXeiIuIEWHQxc747Kx0WnEWK26dZ2FcwFeJwCH3/N6B
         z1FEZA2E/O0TbBCjSgEI3lfKCFjkfuGgm7N+9QxC/QEtM1Sh/rA8PDakvGmjtusNZA+f
         epBg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WRYZgK2U;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b2b as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fayo7pMdGatGZOu6EJ32YSXjiWWvUALBrtUrdmPLWN4=;
        b=jCLtYEHsiltfaTRqPe94YmwjBZS0YNfKLn9X6QqWgcoVNkmzx0n2PVPPcT2cLR1E+h
         xvcsKll0ILE8s43NgbpKRFumpMLsfQU5ZspXpuaqfdVaRZaHd2m95qz/j59ctxDGYBzy
         9yPNqQTDSRs2b98f16+G+KVLcXI1YqIoZtWXqCdIkJSzkjpL3CYopeNR2+KFUWTiX8O8
         XEhfOuG/1E7XUOPH4L7IhFJPvGBvkhWYEh3jV6aHAkVjJXIp0nE89qfQ+qIv/+WkMXxo
         0LQB6rTZmhfmQLTmv4dMWvENVjSYE5xKj9/N+fEKIkReObvJlv0nTmybTj4XsLAcakRw
         Ll+w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fayo7pMdGatGZOu6EJ32YSXjiWWvUALBrtUrdmPLWN4=;
        b=HSzCCTSC82bpJoTkBzFhksdzHRCXvvs2306iB5mN/kncPuRl8y1aGu5w1a7trzCJQI
         ujKMocTI694q41vqK8p+0Tvbko0RJkvs40p8Zht2OcFpPmAdFYm+j8SLtB/DboPxg2GH
         85ZSVt71pZAhyu6muLLIl1U0Rc1+9a7q1rI9TS5/PzB2RDtLTeDJ7e80W8q4eZhxCxmZ
         KC4Zkp56bIJsKP50tgopFzn7qubwPFxOeyWeUhZpda3Ovo0rXDyftXoVCq/AVR1Ezq7m
         EGAaGC0jRCKq5Wa8BsYqC+eTl/IGeElYI6QRuSeuFNEEp6tLeLSu4/9nvSBumwP5m/28
         7iCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fayo7pMdGatGZOu6EJ32YSXjiWWvUALBrtUrdmPLWN4=;
        b=a5BTo3bV+NO4jPWYkwK2bFLnCIF7eG4JeYMsDiMoXEPCHNxAr/21e7s1zC9cmnpSvj
         WG/du5S8tVCKVwBbdfFYMfcjmWNjoyYnAcIDzY2XrdzVNkYKRnJN0igCVLRv0D1j4oFU
         PxbcHgLv4hlK8vL995aA6GnMmfI5dwf6b1eUqRZqKOf6c0f39NjbVk2kH7MMsKKOtpYa
         iVFWFwiNadf5TaR4ygxq9CiK4bEJCJzdON4tNJNeX7oLMYnn5HiI4967WiXrxOH9uH8Z
         hDhBXWkgXOQdgyfFSpXE62gFYinHGljwPU6EwBuiq+rm9ld3diZfYEfoPhH9RYmyF8XY
         hVpA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531fyy8tisJQPZ9il93NRkn8/k9hUvXw2yPqGoX16Ypb3Mdu0tkk
	PWs39ZjEPHeaTLsSL+OBLaE=
X-Google-Smtp-Source: ABdhPJzRiDSdcHFm2KMGojE7J64WI+rIs4d9jIT6Y65FqEx+dck7cjDWz5V8IQT8M/DB/SwkcEP/dA==
X-Received: by 2002:ad4:5685:: with SMTP id bc5mr111467qvb.33.1622143997770;
        Thu, 27 May 2021 12:33:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:64c1:: with SMTP id y184ls2777210qkb.10.gmail; Thu, 27
 May 2021 12:33:16 -0700 (PDT)
X-Received: by 2002:a05:620a:146d:: with SMTP id j13mr53169qkl.493.1622143996701;
        Thu, 27 May 2021 12:33:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622143996; cv=none;
        d=google.com; s=arc-20160816;
        b=LAK0YNPrNU8nYCeCLu9Fv+BhgyQ1HP9mqwGqP4Ro48c59QAEHyiaOp5oHifj7C2Wjw
         FxP4iStH3EkhdJ4bPYeJm4sMQz/GIaZOAhqPg90j+YmDlqH9RY8yysmv4h0KvkSci2VX
         BJta16364sj/SkShduVep45M6whfm+jrmRaFYhpZqicvsxt7J4GYS1KVE7kl/UwG3dzv
         V3gkRxb50Db72GM6CT7Ip4tfbyfbsJObOzNu1iO4lBR+EP51XQOhvAynazWU8R4QRWti
         o0Niud6S7VQJwpUO+IMLsqlSA2g7liTMIv0bUxbtffO3dn7wkeE2DwFwxBUaKm+TMppo
         CGIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=kdIhgUoE9F3zBlRjdECMCVLSlqqYp+VNMOtcyHqGSuA=;
        b=tN8dV+/CESF3ABV1bV67X81paZOULvJ6shJOof9lXWHtLKMO2nXEscQgqHx3Gi6567
         5I3pvjymGNWoM4jA8caEQB2BdGV1YYbuo6wgFtmor0LcxIHRTlmHKQuSw2EnKt+/ABHQ
         PqGZ1TB0ZKs/Y4OrMlh6PCdVkgV7hgyWqp40kj4+X6s9KWknZ+c8QNYNiNkwUBCvU2St
         UIYJxVVqm/l74mg7oPEpZ6XCUz+hknJqVnqLgbJYul9p7bQ6B1BMu2WdR7jnfUxxuspF
         gEAsn0Fghq8hlIvD+nw3RxueNHbAvbzgVl9lOqnUjVRLtRb3RE5NFmlDZzuQqlpI6+dy
         wDAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WRYZgK2U;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b2b as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb2b.google.com (mail-yb1-xb2b.google.com. [2607:f8b0:4864:20::b2b])
        by gmr-mx.google.com with ESMTPS id o23si317223qka.0.2021.05.27.12.33.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 May 2021 12:33:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b2b as permitted sender) client-ip=2607:f8b0:4864:20::b2b;
Received: by mail-yb1-xb2b.google.com with SMTP id f9so2247760ybo.6;
        Thu, 27 May 2021 12:33:16 -0700 (PDT)
X-Received: by 2002:a25:7909:: with SMTP id u9mr6984300ybc.22.1622143996446;
 Thu, 27 May 2021 12:33:16 -0700 (PDT)
MIME-Version: 1.0
References: <20210527162655.3246381-1-elver@google.com>
In-Reply-To: <20210527162655.3246381-1-elver@google.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Thu, 27 May 2021 21:33:05 +0200
Message-ID: <CANiq72mvSkHULFVSDr6A=pv+2PUzXxzNFpjmKJGt4tJum_LEBQ@mail.gmail.com>
Subject: Re: [PATCH v2] kcov: add __no_sanitize_coverage to fix noinstr for
 all architectures
To: Marco Elver <elver@google.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, linux-kernel <linux-kernel@vger.kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Miguel Ojeda <ojeda@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Kees Cook <keescook@chromium.org>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Will Deacon <will@kernel.org>, Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Borislav Petkov <bp@suse.de>, 
	Sami Tolvanen <samitolvanen@google.com>, Arnd Bergmann <arnd@arndb.de>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Dmitry Vyukov <dvyukov@google.com>, 
	Mark Rutland <mark.rutland@arm.com>, kasan-dev <kasan-dev@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=WRYZgK2U;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b2b as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, May 27, 2021 at 6:27 PM 'Marco Elver' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> Note: In the Clang case, __has_feature(coverage_sanitizer) is only true
> if the feature is enabled, and therefore we do not require an additional
> defined(CONFIG_KCOV) (like in the GCC case where __has_attribute(..) is

I would put this explanation as a comment.

Other than that:

    Reviewed-by: Miguel Ojeda <ojeda@kernel.org>

Thanks!

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72mvSkHULFVSDr6A%3Dpv%2B2PUzXxzNFpjmKJGt4tJum_LEBQ%40mail.gmail.com.
