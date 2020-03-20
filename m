Return-Path: <clang-built-linux+bncBD2INDP3VMPBBGU52XZQKGQERPMHYNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id E2BEF18DB9B
	for <lists+clang-built-linux@lfdr.de>; Sat, 21 Mar 2020 00:15:39 +0100 (CET)
Received: by mail-pj1-x1039.google.com with SMTP id f94sf5210327pjg.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 16:15:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584746138; cv=pass;
        d=google.com; s=arc-20160816;
        b=soYKaVmio92LCZnCPprR71YtjfhHO4L+MA+DU6Y7GhIR9pdVSHuQdbtBoIZIwn66iJ
         4wGoQJ1p0UfbA0emz3/T/usz/cJWIaXk+98aI2buHwfyCefP0myvnEPsGoVI0py1iIaq
         I3SvYwxixs+MQYPdu0926VQ/FdERWgedhQ3oYhYH1UOMC7DU3fxICCRmy4PnbRb9RTTd
         kzJwzDgOygM70hWq4patVNsLC9FUFJUiq9PTU8Ms4/omxLww+eb3JpaYlwkNXGC412Wg
         rDoPTk1CbKAZ1DL54EIiFOaJnZtJDwqkNWhxDd2YE++FqUYX4XcDiEqdq0u6+N47qrej
         awrQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:message-id:date:to:cc
         :from:subject:references:in-reply-to:mime-version:sender
         :dkim-signature;
        bh=3+Pby/UjNBTNXOCIToIMB+bVrr/0Igh0f6JBNsu0hX4=;
        b=XvQSEDU3zLVxr47l5kSf6nt0OVZ3KGmhcso6TaxSkcwa+1LdC3Y1cU+fusqsmRa3AX
         dmzYo7C0B37FPq8Pd+e5Hlgcc6fz5aMBwJZpcjNLs12ZccSFBopd/ypo6HtDJlGJOcOu
         zMFC/QTb9jMc23camQVtMhDb1pblof28rGOP7BHiNrB0aZqL+6LpVGEidasooX6xcy3h
         QT8gaazDbKpvLcFG3CpdtZw5slW4tnkX9aLGBN8gCip0mYHH8Y/PsXocCWdkwjROlAjf
         GS8MENLokhoauWOX/hJFM0LwXexddPZJ8eIITWHCru2BpJuZbSxGhLbgNtx0nwKlyCyA
         5+Kg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=jiYnz8bV;
       spf=pass (google.com: domain of swboyd@chromium.org designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=swboyd@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:in-reply-to:references:subject:from:cc:to:date
         :message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3+Pby/UjNBTNXOCIToIMB+bVrr/0Igh0f6JBNsu0hX4=;
        b=Js8kg8qPg1v7B96S7wQXK915765Wj7SLNySUn3tjFwqU2dgGugB8xmicUTwhcnYlBF
         IFzBh+3U1qjTe+0h49C3TtO6P+5shemZeyqmu1YYOcUVE1y/Weewftw9STVVREFrI/ch
         3jSOZMzuRKGj5mb/VWLA/emLVDYFThgqTivSLL+P02D76/FMix2Wzp9paMvlNucHLlNU
         FsAENr0Y+og72+cgLczOqNkOHCj43AIVfmj63VTDoeggvGiItPsAi8Z383XKwiQDdbZz
         xJI1o6MGNPOplJnsBSwspEFJ/tApUy8hrV50SYRgyte/5qLf0rPCduai3H+QTqVsDRCw
         eJ0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3+Pby/UjNBTNXOCIToIMB+bVrr/0Igh0f6JBNsu0hX4=;
        b=VwMcefhVU4s2dWywWcVq8UnvcWshOwn9lXI1PGtcpelm0gZ9h/dgyRol/H/9IZ8xjF
         nlgFQY+eEBGd2wzaL8WR5uqLfhoe2ZBK3lnX8zmpjxBSHTki7PPECjAo9lzQZppVh7AI
         dUobbeuxmHGtLu4eAU4FpjGJbeCl952pP1XL1gzXvRcR8coL9L2B33cw/TWV75+zHC+M
         vNeyvK+cp13HPotQ/BIcIDGCmBsqfFdDFk9VEJjywzyaedCXNivaKx/HOlyzElnQG3Nk
         vdNlEetIrhDALY7gcIy9PyokYwCTLiPlqEu1HZdGyNA0Izv3xjz/g8xlUZWdEaGq5O7k
         tJJg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3cVsikhpK4dvlEyB07wrSJlLivItJDnMAg0xZv9tyrbAkIai9m
	BGxo+W0NJMnz6hRHzxsLzrA=
X-Google-Smtp-Source: ADFU+vvspnXEGf6aUaQiGf1VmBZsZyuypYcTt8Qdo6pbDqbdmAyOOfGy4ylAavdliRnh+ifrgGrcXQ==
X-Received: by 2002:a65:460a:: with SMTP id v10mr10851738pgq.370.1584746138285;
        Fri, 20 Mar 2020 16:15:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bb93:: with SMTP id m19ls4193853pls.6.gmail; Fri, 20
 Mar 2020 16:15:37 -0700 (PDT)
X-Received: by 2002:a17:902:123:: with SMTP id 32mr11053473plb.38.1584746137855;
        Fri, 20 Mar 2020 16:15:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584746137; cv=none;
        d=google.com; s=arc-20160816;
        b=lglUY/YOT+EixF6DD+SFYgnVGp0ehllsSlaK90AQekXyMXF6yhEVGc7WWQNASv1ClF
         LfEmiqrR81Si9JNBc9oM+bhmb2NnXkdwCTrd0ZYKyijy1Tf2ouoRQhSdJGoPcRO/4Qb/
         77TSecYCxjYxgz3djF8sYC6Z7ZZZhrgbFMnsn0lKUe7HZs8xJCQ4GQPNq3a3cS07CoRS
         ujrfG2ZYvElM5cMrs54/ia1dwxh9GjmtNuZYLb7YEjxDTAF8Umlq3eqJnRsKwog/wu7h
         bqY0V2jGZLb/6I8lvVar7dn+4We6b9FH92WGMsAxmyrE3rC/oadAZS2nSu7UGWbefJYm
         NXSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:message-id:date:to:cc:from:subject:references
         :in-reply-to:content-transfer-encoding:mime-version:dkim-signature;
        bh=FZ6hZNPoLZ3W3C9xVYQQv7OrgmFwsZ++Y7nIhZkGcpo=;
        b=CbCZm0wbIiKSmvIAPqVBaWxZuFFEJXsTenNc1GpqbW7+ntvywE+t0RqGYXRE7xmqFC
         ISJm0IVeRiCQQFgAm4QWU+qC9VEtjfk66I1XKZlf6pvqsDzn0wBw2/OPjHFZ3wMJR4zH
         O8FRktb2xbdsTRpKAwlX1MobUeTPco7woASgZueEvYPDta3UeqjMYl9c0WOhBe+FKTOY
         lJROTDmqaGw1fdfoX3vZMWcFTK5O7jvQQhPpeWc6buAX2US4EOxK6rn85yqlcGx24WNa
         MiEnV/k4s06g2FX+XYNis4CVn2hwyKNR08tmZm/iH6/vop15bbSi7lxyVb0EnNEo2IaG
         UWMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=jiYnz8bV;
       spf=pass (google.com: domain of swboyd@chromium.org designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=swboyd@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id 83si330444pge.4.2020.03.20.16.15.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Mar 2020 16:15:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of swboyd@chromium.org designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id l184so4070264pfl.7
        for <clang-built-linux@googlegroups.com>; Fri, 20 Mar 2020 16:15:37 -0700 (PDT)
X-Received: by 2002:a63:214c:: with SMTP id s12mr10576578pgm.296.1584746137439;
        Fri, 20 Mar 2020 16:15:37 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
        by smtp.gmail.com with ESMTPSA id a15sm6552518pfg.77.2020.03.20.16.15.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2020 16:15:36 -0700 (PDT)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
In-Reply-To: <20200320145351.32292-27-vincenzo.frascino@arm.com>
References: <20200320145351.32292-1-vincenzo.frascino@arm.com> <20200320145351.32292-27-vincenzo.frascino@arm.com>
Subject: Re: [PATCH v5 26/26] arm64: vdso32: Enable Clang Compilation
From: Stephen Boyd <swboyd@chromium.org>
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Arnd Bergmann <arnd@arndb.de>, Russell King <linux@armlinux.org.uk>, Paul Burton <paul.burton@mips.com>, Thomas Gleixner <tglx@linutronix.de>, Andy Lutomirski <luto@kernel.org>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, Mark Salyzyn <salyzyn@android.com>, Kees Cook <keescook@chromium.org>, Peter Collingbourne <pcc@google.com>, Dmitry Safonov <0x7f454c46@gmail.com>, Andrei Vagin <avagin@openvz.org>, Nick Desaulniers <ndesaulniers@google.com>, Marc Zyngier <maz@kernel.org>, Mark Rutland <Mark.Rutland@arm.com>, Nathan Chancellor <natechancellor@gmail.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>, clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org, x86@kernel.org
Date: Fri, 20 Mar 2020 16:15:35 -0700
Message-ID: <158474613590.125146.6442368806113128893@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-Original-Sender: swboyd@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=jiYnz8bV;       spf=pass
 (google.com: domain of swboyd@chromium.org designates 2607:f8b0:4864:20::443
 as permitted sender) smtp.mailfrom=swboyd@chromium.org;       dmarc=pass
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

Quoting Vincenzo Frascino (2020-03-20 07:53:51)
> Enable Clang Compilation for the vdso32 library.
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> Tested-by: Nathan Chancellor <natechancellor@gmail.com> # build
> Acked-by: Catalin Marinas <catalin.marinas@arm.com>
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> ---

Tested-by: Stephen Boyd <swboyd@chromium.org>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/158474613590.125146.6442368806113128893%40swboyd.mtv.corp.google.com.
