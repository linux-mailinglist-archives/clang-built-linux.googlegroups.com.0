Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBGWU5GCQMGQER5UU3SQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C66E39BF33
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Jun 2021 19:59:55 +0200 (CEST)
Received: by mail-oo1-xc3e.google.com with SMTP id j9-20020a4ad1890000b0290249480f62d9sf1072132oor.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Jun 2021 10:59:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622829594; cv=pass;
        d=google.com; s=arc-20160816;
        b=U0w77ic/mMN51ZbVZAD0Qf8gKb/ROh3PcFOcT1s0K6rUFnkIWQHhhN/8Ci7OYTFZDr
         INPQBYmDJxzjJmpG7OrjqkqJQduyfDIry6IauOHA47gxgorrt4RWG82nfCIy3kF0sYqM
         iflX8L7+LglC0rF+tvstAiuYnrHybQ5ETZg3WOvpg3MAQa8rq27jEqBNGBvBQp4I5C/w
         A1eW2GL70AHPAUZHiau4WTDGwLUN4NTV4fXJt2qAZnDZ+LG0Oq0EqzPDilAApJm+uVal
         md2+FgYzL8qTnw6QAGeysmfzzbJ+1J1V1Fa6O8/r0a8c6TDUvqe2SyzDsGxhpvd74XfY
         KtXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=lIBsKgpOsz/cRRlTBCTtY6MUZwQIupr3eXg5KIm7cOc=;
        b=XbijYY6RmdRRO+Iz6ZIxw8ylqSFgKjWOICxEKhCPbAz9hEgu0jlSuuG1ahDOw36vID
         Hmz7MnwaCbWG59grF5oUScvprOwBiEhrxIA1/ynVVw+0PSQlzaau84IbEd84hGKJD+g5
         pWRh//Zi7cGQeLmEN1VJ4vwssY16exnx/Q/F2HmX4sIRQ7UosREnxiqx5tIfaLvfSXL3
         sjBpp6v5tayvNl1Gb/I4RovWDuaUfBdSidqRlzBsFMx1isqTdhksyY/qndVvyj6U4kg/
         6lmKFLfwmSGbFxKguEA/z5VRHmByvI/Ao6BXPbwFPEvDka2QpXabQtpyyhOs5HrP+qsD
         M4dw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=ZVv2D1Op;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::632 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lIBsKgpOsz/cRRlTBCTtY6MUZwQIupr3eXg5KIm7cOc=;
        b=tdcD81shbqNe5JjFGwGXm3uLRoENYZif5wY+MSeKH9hk7fnJwRKMDleidl8ZDsNWLX
         QgX9HA3MCry408TwY5ZO1GzwS/hZqIjhyNG+ifRtGlbZm/X3Qid3SLCfl1aZ12tXlrTF
         xbYqbOzHRLD/5rfIdhezm2LG2A5tdW5oE7TOJ4enepvuxJWnsqor7QtRlthi/RUjgYXa
         zQLwsItjpfNZl+CYVj4U02Y7I825mJZFocYd2UgSVGBMwwloC2ghEVsknwK0rHwncgNV
         kFRaDZ0RZMJtuXSpB0r1OvGQXEFmVTGYXpPzNxDcAHKAH398ZQQ9O85uuODMkJkkX89h
         OVYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lIBsKgpOsz/cRRlTBCTtY6MUZwQIupr3eXg5KIm7cOc=;
        b=PMhmO03W98OTTcYlGDQzM0hMNEOZ4hSWXGnu9Dlz8k0v1i3TqjrWgvWfi4ufCEljCW
         psexSVM6rplgIiaua0pp0VTKeP+uCplBQJrEKg3uMXPDVJbS9ZnPyW+q+QyI4RA2/mF1
         pNgJP+xSyrAKl7113SzDA1OaOa4rDK+br7ZJPwSMC2k2Ef+1QJFSQC05OC2cLLimT/kL
         WNSq4kcWWG4IRMzySgt3EwPRvziXWRlEf+NuDjxB9rEsQEwGFJVWlFJ8rGbfdYzgDIpi
         gr/fSbJYIFn4/zCMrJby2vOYTsynT5K4wKFvSfB+I/9gR+V5fgZzzh4yq4lMDvpho3JY
         R29w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530f2o7htDbXqN6wf1lYsPtgsJ3PUj1ADxEvUXidhrvnAVUgHkHG
	LA5NDGCGC7AaXs3CnvZp3w8=
X-Google-Smtp-Source: ABdhPJyRu5l5SLOsoSiXRiaqVrHR8Hlt/EyaKq0KZ66DOU3zw5hc3dO6W3Ko88pkpXxZKZuR5Ou31w==
X-Received: by 2002:aca:fc84:: with SMTP id a126mr11741287oii.49.1622829594457;
        Fri, 04 Jun 2021 10:59:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:641:: with SMTP id 62ls1610688oig.0.gmail; Fri, 04 Jun
 2021 10:59:54 -0700 (PDT)
X-Received: by 2002:a05:6808:a02:: with SMTP id n2mr11299817oij.104.1622829594134;
        Fri, 04 Jun 2021 10:59:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622829594; cv=none;
        d=google.com; s=arc-20160816;
        b=tmdOvMnSwsmY+boWMqubsXzrozRd+lyRHdrD3dPirZHKdgGlecVqJ7HcQBijcNFGML
         MxliCm2mDm3WRauHvV6JqbBRLZ4iix4QyFfrnHW92gpY8RsbC6VMl6lY+12EAGXzg8p6
         gFi0g0Vb4Lfjl410ZCebfFi1mAcciYFGPSJGosIKnBjsbaZ8WPtTwK63iOt3NPzlWiPc
         72BBDgE86IECfjaTL2g+zqUO9yHf0Aw+JoIQbetNpeNIiTwoHmAQqqBtnfKk7Tufu8Q0
         BdEaqI9J0hmvHSwzU3ZiDtjb1xDKWldsRu7/4axUCVl15YvcPqRdEgSgC+m+0j/5AwH2
         h7jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=pfMgGstv1iK+qTrHiOBb+KFwv6lJ4pEJizPyxTuhpd8=;
        b=v2ZtXA6TU5rlS9iWpDpNzNx/GlVlopAMlJcW7mPRPq+PgASYyytiktsyM0yx8q+Uiq
         EyjIDe+AauIMOFjUPsUoELRH0YZiG+xuCnoGcJ4bsP+S6/Mb2cF/NhANfDwjB74f2xO/
         Yb5YVPCeSxB5qh4ttoLJtqNaODvpICc35meWuGO81B9Swg/oWVX35L/1jdcR0CH06HKC
         etmEH0bKD6k9kf9lRgU0P8nuukt0nswtdqbEeICCAzsHHU4smI4jsDATn4XrQ+JhGr5q
         fO38owtIOyok1kqQR+1sddLRfMkSETu4K3lCYWXVTYS3bldr7P9F6HFaPeq/Aeao7gbh
         hRoA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=ZVv2D1Op;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::632 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com. [2607:f8b0:4864:20::632])
        by gmr-mx.google.com with ESMTPS id 12si365090oin.2.2021.06.04.10.59.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Jun 2021 10:59:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::632 as permitted sender) client-ip=2607:f8b0:4864:20::632;
Received: by mail-pl1-x632.google.com with SMTP id v13so5047578ple.9
        for <clang-built-linux@googlegroups.com>; Fri, 04 Jun 2021 10:59:54 -0700 (PDT)
X-Received: by 2002:a17:903:1243:b029:107:eca4:d5bf with SMTP id u3-20020a1709031243b0290107eca4d5bfmr5410080plh.15.1622829593519;
        Fri, 04 Jun 2021 10:59:53 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id o10sm2274012pfh.67.2021.06.04.10.59.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Jun 2021 10:59:52 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Bill Wendling <wcw@google.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Jarmo Tiitto <jarmo.tiitto@gmail.com>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>
Cc: Kees Cook <keescook@chromium.org>,
	morbo@google.com
Subject: Re: [PATCH v3 1/1] pgo: Fix allocate_node() v2
Date: Fri,  4 Jun 2021 10:58:38 -0700
Message-Id: <162282951519.3080953.11346638083845350363.b4-ty@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210604165819.7947-1-jarmo.tiitto@gmail.com>
References: <20210604165819.7947-1-jarmo.tiitto@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=ZVv2D1Op;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::632
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Fri, 4 Jun 2021 19:58:20 +0300, Jarmo Tiitto wrote:
> When clang instrumentation eventually calls allocate_node()
> the struct llvm_prf_data *p argument tells us from what section
> we should reserve the vnode: It either points into vmlinux's
> core __llvm_prf_data section or some loaded module's
> __llvm_prf_data section.
> 
> But since we don't have access to corresponding
> __llvm_prf_vnds section(s) for any module, the function
> should return just NULL and ignore any profiling attempts
> from modules for now.

Thanks for working on this! I tweaked the commit title, reflowed the
commit log to 80 columns, and adjusted asm-generic to asm.

Applied to for-next/clang/features, thanks!

[1/1] pgo: Limit allocate_node() to vmlinux sections
      https://git.kernel.org/kees/c/46773f32ddf1

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/162282951519.3080953.11346638083845350363.b4-ty%40chromium.org.
