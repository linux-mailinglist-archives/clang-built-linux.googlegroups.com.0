Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBJFPW7WQKGQEAWWGBLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F710DF266
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Oct 2019 18:07:02 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id d126sf11329234pfd.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Oct 2019 09:07:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571674021; cv=pass;
        d=google.com; s=arc-20160816;
        b=icJ4PRhyUxo+PtGUAHsONe4pxEgQ9O+/2Z/TZ6qYtFEEHQCVjsZy8G7W/WlrBRsg/g
         JRX/AQ2GoY8MA9lMwgbkyCTJqUiK5FM576/0NgWOii5YS6ftTbjfmgGt/R+hDz628az1
         SBHfh5k5JNUltboz+FTk/oOXknHvMGHKIoWz0Rj1HIbhdhyYtKy+jLEIPZnjud7pK1h8
         7GrRUF+++vp68c4ae611jZtqBw+1Bl9NOsDQzLB2J2MOHJn0GA7pGYRsTQ71sM1pj78F
         wpoE0l7iMIbqyUg/9H7WQc3t/+TwTe6Z8/kcgcXFv8Ycyz6JJpI0Ge8znbA0rKXB7TWF
         ib3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=15lDVrxnJb9Vq6vMzc2OZRJy+l0eXaVk+Vc6dRVhDRU=;
        b=nw738weyRu8X1JU2BjYA5p3Td8AVUYrDVvD+bdXAWshQXztL6sVpKWt61lLxu7o4Sp
         LETbwWeIUFnxRwFGihda+oYOv3MCRNT42t7P3kAdNUJrAm7BmOZyLeAUT01mcpPmEQHr
         Bk0CM082cWHnOt31fTsO3kwmcwUYLI0sO8QBknZXq1LJDq8Eqa/S15thW/AE2TYlPfs2
         LCX4OKPuyBYa0ZmUWP/7Zyt/482mdUXQ9qC+xZjIcopfSQ9m9mgNf2XRhknPLFXhJ6fx
         7YO4MoYUk3Wvj0lQ7nNcRpEM3wUHmTW7BY6W69vNqCDchSSQRk0hmwgrJxQrqXnrPVfI
         i1kg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=BXwbjyQH;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=15lDVrxnJb9Vq6vMzc2OZRJy+l0eXaVk+Vc6dRVhDRU=;
        b=RzETI6vWPNH0twUmkWDTnZ+et3fDkvtrWh/1ljOlW+jSweE9UVFjSW3dc1ltpNTzOZ
         xuUp/Z2r6Z2nUA1maJ4PAW8WKRka0Nm5MDSrUrHtBRdw5QbU+fyRdJhzCcZ+L9vS1a16
         2QWu6V/OBcmcPLMf2zlRLYlWVLdBcLHncocPqvsOOU4ROusinI/llg71WgY+euttuekE
         VtugCZ3V6eGAJGunmqLJgNVrUh6oJj/jaa7/gVAUlJUZiIesQ+o0asAZgkwwIOCUTd8t
         xdXysLDJ5KgEui5xVYc4JCyAfnUSW7K7V65CqUCLAR33Hjo3hCzurN4DEXRHxGGrrHRu
         BJNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=15lDVrxnJb9Vq6vMzc2OZRJy+l0eXaVk+Vc6dRVhDRU=;
        b=oGFmp31bsKKBll/8W//z+NNk3KvRIGHUV0uwItOnL/mWrYPiqt3IMxw5iuKQx99aIp
         wsH9Dbljk094bSfcR+YlGOrF85LGN3EeGX5JuzqsBChKNH6zkXEYBe4gR81DO+Xks/mw
         N6RJu6W1jRCu1lnWA9okxPCxlkZm+1+jTBbdDEOLPSqhX7CMbfS8uE2m4sVVKUJputSI
         JBD2gnOBFPvGxmzqczzNQOVvpsOwfVKJc79JCNwNuNFD5VKugiqjtX4gqzLSP3Ud35ds
         OhZtqXjdcbLTQ+CDAWDTJ8XofGdqEntbK+JwhChSiq1kYoWu7akO6Z2iircTECaR94Xs
         PDsA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXwWZd5ys60W00PvE8DrBjKWo7jO/ihddhBZJIr5O/UxtFm5mv9
	8TOr7kI6qP2iYfZMuB/GeAA=
X-Google-Smtp-Source: APXvYqy9o+Du/yFBLzo+9/z3yDrFKrr0tOdtkUwt3/O5wOsRx9ElQVj/AlVisfPLyn5mWtyGI0v9bA==
X-Received: by 2002:a63:5f52:: with SMTP id t79mr10392275pgb.311.1571674020715;
        Mon, 21 Oct 2019 09:07:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:35e6:: with SMTP id r93ls15570pjb.2.gmail; Mon, 21
 Oct 2019 09:07:00 -0700 (PDT)
X-Received: by 2002:a17:902:524:: with SMTP id 33mr25878897plf.123.1571674020342;
        Mon, 21 Oct 2019 09:07:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571674020; cv=none;
        d=google.com; s=arc-20160816;
        b=WWMg1El+hNk3RJ/E8fzfuW9nvaDXogIbgwq6F7qD2aluEHD+ZXmleMTMyqwRVKVLte
         a/00b7xq2XWe7vUgVnqguMCtYtpjTC/fTeh36VkeMCSGgjtH3VOThEgZJlnlUVPzq6SI
         K9dbm6Nevid2CnXsGOSHaBgxLayxlAuwVRHCjVVbtUCLF5CkpHeHkkwM3tkil1MzcFnB
         8BzDJXd2qz7LeJFITkWtciQBSEF6iEmCJekExwzagEODvMMIGL76esq7jHTfNL9O/0dE
         p3HwT6agzI3fPPy/u0YU/IRVIZknMkR/vf0WCJ4elsIrWLEdf1nAnJpP8WlqelzLhMMW
         cGQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=JE8U2Fghv6YjjweCRTqDn5FZUlMFhhM8tZP7QTcsL4M=;
        b=zJMWay9FvHVvTIVVD9jo0jhD1KdHWc+Z9nCqHYo1pukONBKyJ/leDkWl1DaVFtMUFo
         XuGkop2dBRsA+VpENDRYBcv+U7Bgqtd5n2NZnYZu3qEVEAm/w/CG6FG79hMGyBTRKFnB
         9beauhLkZd91q/pFzf43XvdPUIevglpSShcpAOTjjbmfKsBlNOBCI4Rr4rmg/RJhPF++
         6BKQY3RTAZ4evtwj3cMZ4gvkQa0E5R3qJAW3hQ8ippLXsol1BaBP1KG3MeNilrJeOr1k
         CVZUlpzXnRyEJ/NyOZkCFBCapwmD62YBu2whQk1KEN0kz+JtO743srlRh58SmhflrAtb
         GYMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=BXwbjyQH;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id m44si608912pjb.0.2019.10.21.09.07.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Oct 2019 09:07:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id i76so8098776pgc.0
        for <clang-built-linux@googlegroups.com>; Mon, 21 Oct 2019 09:07:00 -0700 (PDT)
X-Received: by 2002:aa7:96a9:: with SMTP id g9mr23757769pfk.147.1571674020135;
        Mon, 21 Oct 2019 09:07:00 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id x139sm18509941pgx.92.2019.10.21.09.06.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Oct 2019 09:06:59 -0700 (PDT)
Date: Mon, 21 Oct 2019 09:06:58 -0700
From: Kees Cook <keescook@chromium.org>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Sami Tolvanen <samitolvanen@google.com>, Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Dave Martin <Dave.Martin@arm.com>,
	Laura Abbott <labbott@redhat.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 16/18] arm64: kprobes: fix kprobes without
 CONFIG_KRETPROBES
Message-ID: <201910210905.7494C5C@keescook>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-17-samitolvanen@google.com>
 <CAKv+Gu-88USO+fbjBgj35B4fUQ7A_t9nHO_swyN=T1q1G2wViA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKv+Gu-88USO+fbjBgj35B4fUQ7A_t9nHO_swyN=T1q1G2wViA@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=BXwbjyQH;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542
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

On Mon, Oct 21, 2019 at 08:21:48AM +0200, Ard Biesheuvel wrote:
> On Fri, 18 Oct 2019 at 18:11, Sami Tolvanen <samitolvanen@google.com> wrote:
> >
> > This allows CONFIG_KRETPROBES to be disabled without disabling
> > kprobes entirely.
> >
> > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> 
> Can we make kretprobes work with the shadow call stack instead?

I've been viewing that as "next steps". This series is the first step:
actually gaining the feature and clearly indicating where future
improvements can live.

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201910210905.7494C5C%40keescook.
