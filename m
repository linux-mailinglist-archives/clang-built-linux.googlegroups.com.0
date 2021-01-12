Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBSEM7D7QKGQEVIVTGNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 1412F2F3B7B
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 21:27:54 +0100 (CET)
Received: by mail-pf1-x43a.google.com with SMTP id 68sf2024721pfx.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 12:27:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610483272; cv=pass;
        d=google.com; s=arc-20160816;
        b=KHSamjJL6hiYdcnSfYH/pvlPJyp2Qezh7UANQ4Qg5KrwT1LTrmPPHEtnFbboIMgEoX
         YuQrCF461KsA6YBF7e6XSFWIM8WS/n8Gg4aUECoDr+2ZIp5daVOLK/hCcMH4WZnr0edS
         u+MnWHdatc/say5dVZ0FSqMF6E/xs+SEOm7ki8/+e90ZtOjLbsKohB462r3LyZ2ZycLT
         aUGWkY2m5j5IqgiVP+TMLdAMIucKwXFobO02xnxP2UGndvThPOnXjIq4ktOoP8Q/pW8y
         oh/maAruou5gb8v2oA3Dsn5ovtR7isZf9ywB3CGY68IJnjn9cO9PJHhXd5mzL/VyeU5s
         36IQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=fJ+49T3s/5oK5LfEuOfk38KAueogSDeVgJ+bxLHkpdU=;
        b=qfzrjdhMnm1LvGC76yOF/rBxE60gxeqPLT+AfHHh5QmtukQM7kp1UrUmXl1YOgCi2c
         4IFINxboED4Qt1HoivWMG+wdxP+Ok7SofWoiRX47HMVrb0Iy9ojxQKyE/Lq8GOqEp4MR
         6CERd9sWnSK+M+mKrCa13qbQhC42fFq4HdgRL1tw+UfuUE92IErmXZ2hkYoayk/uOB8S
         gBhHjxgDu73ED4ReZXRpTW7j6chQs+GnAXB6oJjkt8bQg3nicrs2WyKwUopcRHPHnOoV
         pomZDRdt73jG7J8peEgirSBjym+JO0cEHL2q02e2pj8SP79OGMGEYOcyENJSk5ApkwAe
         MDBg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=UUnF4LkM;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42e as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fJ+49T3s/5oK5LfEuOfk38KAueogSDeVgJ+bxLHkpdU=;
        b=nQI1WhMd3WYpxXeTJBNaWOvlgliVL5kr7Z+EVshHwAXv0pSjUUx4yk4Iup1Z+iCxLJ
         BEY7i5tS3L+NmJpNICmlySgYtU27crzcLjehAQZxMPbDiFLADLfxhs2ka9Fm6obwyQrD
         a7yoac05e+KvJQvDuTV0spUs953VB48nHNys4Pq1G6nZCJn9nDh4vZrDlRYQAhGusFrK
         jnoIs66pJqJVhdVZm0ymNPOw3zZObxt0yo5DgtTyCAG/OCH769FygtQ044K+ZvwUkFwr
         GzFFnDFMX8v0ncYnPrB6ZzcikDK9JR8D8ogpCSnhwBBEYeIoEUSrjVIzn8ot742OoVz4
         jvyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=fJ+49T3s/5oK5LfEuOfk38KAueogSDeVgJ+bxLHkpdU=;
        b=CHdO+6xYxIEPZNJXWQMm2NKrvB7ANiLukcPuaTMyi2jRtBzIcflMsjPDpdHlYNDkDT
         N+eyv3qOyduNKInVuszPWIiTJoIGsldhI6vZ9N6kY5ck5v9F4DTCYHX6iYX/de0Wmtzr
         8vNxa3u7bDdNRFE0M+d/Emb4PVFS+bN5xXCwu0k4ZVEKQeY4oQCiJPe2NasOsjkIWXDV
         TiBRLStwWRBa42m8lz5d76BwPcVFrTr5q7u24LYhOg/9k8MTIvdqeEWIRh6dPaMlTKhS
         GcyPKIPVcAPCRgiHgawz2aveaVziUZFgx2hiDpzwMqm8AtY4/C3HN3aeQcX02y6mCB4a
         nyQQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ItkO9CUUhK5vI37X4kpe+NQC8dtZ+RKMGWbCbIr43/e3b+PwS
	A9UAF+GgyYlWocnd3U9T6go=
X-Google-Smtp-Source: ABdhPJzf8qlDUAQHVuZxuWmQ3BNkK+/Hm06rp1mUgaP1Rn5W4wvcohblcn1xRipg/wZqX9pJnO2Lhg==
X-Received: by 2002:a65:6859:: with SMTP id q25mr797972pgt.57.1610483272413;
        Tue, 12 Jan 2021 12:27:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:bc47:: with SMTP id t7ls2130758pjv.2.gmail; Tue, 12
 Jan 2021 12:27:51 -0800 (PST)
X-Received: by 2002:a17:902:9a4a:b029:dc:435c:70ad with SMTP id x10-20020a1709029a4ab02900dc435c70admr818430plv.77.1610483271823;
        Tue, 12 Jan 2021 12:27:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610483271; cv=none;
        d=google.com; s=arc-20160816;
        b=glBVMob0cMnJo9vtnuvHXVG8y4za4JbelQVp8LEBGy1rxMt/bPTaTu5WF4zwi6Cvqe
         YqwofyWgHZmPAwtw1GSqnzBN7o+IVmKU+3o8woTAJbLLsm7wpiR2CPgGdbztYYsP6EL1
         Qwt0bLQ+GixxShqEfKkuVK2dx7CHxd28WvTvT3ILXUCUJ3fPWDmVLKUo39JHQzz97yMz
         zag5lcAcHuY0NGBbllO6DOTPr/tv6lXEl+ETKF6Hcx/xQpzX02TjXkgVHp111hBIgi9T
         zBAuTVPL3PpDMexPBUjTqBAY7HGClek/n35xruPUugDmMEG944h/fdaA/9Qz+Fgsr6ch
         RZ/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=+1M3GesbgTSmOd2h7c4OH51TFpiZEy46zgQiOOCDaG8=;
        b=JxxRwJiF3I2LfaP3s6YnP8nw5D0sILuINNGPn1kxNvBjgWu0uLsoPi+uK75pBhoF7a
         OtmN9kCskhObPU9YBYfpH3TQLE3/OAK6n8UaFgHgFZdN/SKC3Rtjrd6uRcHeNo/3UTIP
         D7CCJWYxNxPL0H58japV5hYqPtvwU1lK+F4mtAu4U/ZSDssY6BWK5qL/Pumt2sWlMBqU
         w8ILe3UpjabeiUP21SAL7lVMc6Zml3FmLnmHxRmR8l26x9+1mQa5TdUwd+Ugaj8MFC0Q
         1Ry7Zp5YMriwoIgvp+0eyUKaMb3Tiw3Te6WUzDXQz0UZdA+MC66erfGMV8Sr+0z84hBu
         kejw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=UUnF4LkM;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42e as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com. [2607:f8b0:4864:20::42e])
        by gmr-mx.google.com with ESMTPS id q32si293264pja.2.2021.01.12.12.27.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jan 2021 12:27:51 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42e as permitted sender) client-ip=2607:f8b0:4864:20::42e;
Received: by mail-pf1-x42e.google.com with SMTP id q20so2073898pfu.8
        for <clang-built-linux@googlegroups.com>; Tue, 12 Jan 2021 12:27:51 -0800 (PST)
X-Received: by 2002:a62:4e95:0:b029:1a3:a372:8b3c with SMTP id c143-20020a624e950000b02901a3a3728b3cmr1009973pfb.28.1610483271533;
        Tue, 12 Jan 2021 12:27:51 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id d10sm4096844pfn.218.2021.01.12.12.27.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Jan 2021 12:27:50 -0800 (PST)
Date: Tue, 12 Jan 2021 12:27:49 -0800
From: Kees Cook <keescook@chromium.org>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Russell King <linux@armlinux.org.uk>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Vladimir Murzin <vladimir.murzin@arm.com>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] ARM: fix link warning with XIP + frame-pointer
Message-ID: <202101121227.446CE291@keescook>
References: <20210112154658.850192-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210112154658.850192-1-arnd@kernel.org>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=UUnF4LkM;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42e
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

On Tue, Jan 12, 2021 at 04:46:40PM +0100, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> When frame pointers are used instead of the ARM unwinder,
> and the kernel is built using clang with an external assembler
> and CONFIG_XIP_KERNEL, every file produces two warnings
> like:
> 
> arm-linux-gnueabi-ld: warning: orphan section `.ARM.extab' from `net/mac802154/util.o' being placed in section `.ARM.extab'
> arm-linux-gnueabi-ld: warning: orphan section `.ARM.exidx' from `net/mac802154/util.o' being placed in section `.ARM.exidx'
> 
> The same fix was already merged for the normal (non-XIP)
> linker script, with a longer description.
> 
> Fixes: c39866f268f8 ("arm/build: Always handle .ARM.exidx and .ARM.extab sections")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202101121227.446CE291%40keescook.
