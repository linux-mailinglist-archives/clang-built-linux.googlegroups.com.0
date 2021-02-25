Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBPFL4CAQMGQEHZCA2GA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id 459C7325897
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 22:25:18 +0100 (CET)
Received: by mail-qv1-xf40.google.com with SMTP id a13sf5290454qvv.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 13:25:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614288317; cv=pass;
        d=google.com; s=arc-20160816;
        b=jDMW874yzzyNbijyrWa5TNbPzLZP5EV453d0WhlGrQ/57vJvkxbVykhx1d+DnTB8Ph
         fflvZN8MBm0RcTQKaE6zWl+S9wQzaxL73xe5zih3yrFO4mpp2Aw6H4Kr/wCUUIxvpDgS
         HOMwVKjU7ISiY081F4S0e5fY9YbDKAU+L+giEroclHlEyc9B8BWJJPbiZqeu4JXd70zW
         cDafINBAiS8kUQbPGo/MzBdta8FvfF7UnqK+pXaNk6/09h7/uqT8rLhUCz4NSXgUo2IV
         15znPC+S2VBUEQANJn5GQXvbgchcm8qZiuO/WabH7KEqhjzB2lcCNxfO6nrnBzyPEUN/
         gdWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=89n5yvo9YOj9g/D64K6/JZjAgWuAkM5VtLCm7ZvjMcg=;
        b=Vf5N6NnT6FtwTc1u+MPaGnH4aO3Jl5IbAP9bTCMRKQrZtmbyjp4WJCvh79vqm6zoY6
         aNn0ihF+sITL7u3tF5YelNi0LkfjoAg/F0FP3OkJ+DYCEY8IqsDrYu7qerp9v1gbqbpc
         AK1GjMW8zuUN7/6tzWsjUBy3CjPfma8BA/WhKFQoVkvQYlPuGIYua2r/2wdHIo7+ua6L
         9pbZJjIYlulWKoIk7LcABIB+tRGii0egpmPR/XdXTHkrquH+c9KRD/4IcyFuSFHsxf8P
         XHbEQuAtvoDnqcwbgVEkanPKIk5I21QSs/Q0jXDl3NfOYQzvi/GW0gvdBPBS74hyWuC/
         slkg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=JjVphRv+;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::434 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=89n5yvo9YOj9g/D64K6/JZjAgWuAkM5VtLCm7ZvjMcg=;
        b=JAwiMJNNAzo2QkWpi343BZu8Bo7joB/FAc2aLURLz15uhFaGA+vz/chj5fGIXqdIa7
         dP+27nX0STHmMFzDIaky4PDAl8nNP91Y2jJvsL6VZoxxxZyvX63lUvgVkQYIz/71mqLP
         DhWgcFn44QrMxJqkliqfjpZCYvwM2Yix862nV/0wktUrm+E9nSvSyMRP3AjiGj7QAJtA
         8/+WLxmOZkDIwK2lgNiwZ4Bhwr+BjQfFgUdqSJROSmvA3m53erjjZf1VWmuzDKo5jVPW
         0ULwkUnYG3ayj6/MEe7/XFdA+dcdJZt5MUS9Zubk4qreH6iHNpnSTJhhU05kHRFXX3Nn
         NpzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=89n5yvo9YOj9g/D64K6/JZjAgWuAkM5VtLCm7ZvjMcg=;
        b=TBrVGuVZJc5oTKLBzsys4JBL0lRUscDCG7n2JJVERA/lPBEyWnLD3K08jnoE7dCzAH
         1hdYGddc2FvLpNyR4P5Fl3AU83jEv9kq6klq4d64UJMXOjMSLKpZSvvP5ricGHGNhJu9
         xREcK8ptItYBELyJJp0loJrC8Lymm7phjtSnd4bq7IKlvHDlVoOkVmFtYfd6t9GF8FvQ
         0UNxuUY0/jUawmAaZ1OOECJvmYG3Dw5jevXiiuJYDFtVCDi5V28IoFaMWXmOA+ivYhSP
         gR38CxsRlrmxccLbIo8v0aBnmWQTRaeA+VgJOPjIUKoSq9AUVvEd+qOrDIGT7gmfU0oP
         DhYA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5337CyQM2EBoqvxwsba26KR5ThaL5fPQ8mN/+bwfq/pdZzXvFOxO
	HR7HcRldXkGcX5kNckLIH+Q=
X-Google-Smtp-Source: ABdhPJwCDFN80lHNgbyBcNJiq5N1r2Pu9GfOciJCuBdzTuoycQUc/gsvJxyXYTkh17/D9iP2z+nqPw==
X-Received: by 2002:a0c:e38f:: with SMTP id a15mr4785813qvl.18.1614288316935;
        Thu, 25 Feb 2021 13:25:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4e8c:: with SMTP id 12ls2659638qtp.4.gmail; Thu, 25 Feb
 2021 13:25:16 -0800 (PST)
X-Received: by 2002:ac8:6684:: with SMTP id d4mr88868qtp.4.1614288316389;
        Thu, 25 Feb 2021 13:25:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614288316; cv=none;
        d=google.com; s=arc-20160816;
        b=UyhCLRIkZGttYak7QLlXa3WwaOJWZrKYPo4N09/XC6E8vKbvS7AwsVuLhCdR1bQlSi
         6pR6eT2WxP8mDNLUkRfhBPpB8fSup1MMiJHduUNcreBCok/iy8nrIYPTMAMWRYWfHnMA
         u+WcxUYHnnz5DEPM1kr5ZMPhFKuEDw4n4mFINYSKzPvZJaLCn9fNAUAUncIR9KDkdmsN
         7GomL8pfn2iQ5BSSM7jNZDixmVAJ5OcZto0A/+6ehH5fAjc56bEMW8vaQVK9d/PRe3X6
         8KotQZEwp/ntuVHB6DCJ+DFYRh1CCDtqnLNXc84Mbnz3/CD9RxDcjjVN6H+PsDY9//h0
         iP1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=sv/cK48MuX+Y4npc2hqZNXEhNZvtvJw2LfqK3MM06hw=;
        b=juK3RPAyZ2HrYbQ2kuC5BuwJ54VkcchaMuaDhygkTU3L5BQu2aR42xGtG3kEkPA2Cg
         KrZaQ3MBq3cq11zIoZRKn7ikeWJv+GnD+8lfmv3n/QhFEIdBmlTif8+6ddg67cdPqZfn
         ifOz5MAejy7GWthdjgd1euurQX8S99Lb9rLrURDVhTb/UtuGP5i+yT1DwNPAy+konzIC
         ymjhtx8ZVLBZCHGDSRLgiYhf97VK1gQTDr4KWFAUxkDRyN3l3kjeqq7h7tUjB07D1lf7
         5sU3izeFlR0UaL8iWvaME4Po8tXix+gRtvWxo3peo86g8GsDAGjRWnQXxPzMhHp7a9xS
         tQ7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=JjVphRv+;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::434 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com. [2607:f8b0:4864:20::434])
        by gmr-mx.google.com with ESMTPS id b16si397293qkn.1.2021.02.25.13.25.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Feb 2021 13:25:16 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::434 as permitted sender) client-ip=2607:f8b0:4864:20::434;
Received: by mail-pf1-x434.google.com with SMTP id b145so4487214pfb.4
        for <clang-built-linux@googlegroups.com>; Thu, 25 Feb 2021 13:25:16 -0800 (PST)
X-Received: by 2002:a63:fd0a:: with SMTP id d10mr4584076pgh.405.1614288315130;
        Thu, 25 Feb 2021 13:25:15 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id w3sm6812240pjt.4.2021.02.25.13.25.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Feb 2021 13:25:14 -0800 (PST)
From: Kees Cook <keescook@chromium.org>
To: Gabriel Somlo <somlo@cmu.edu>,
	Nathan Chancellor <nathan@kernel.org>,
	"Michael S. Tsirkin" <mst@redhat.com>
Cc: Kees Cook <keescook@chromium.org>,
	linux-kernel@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	qemu-devel@nongnu.org,
	clang-built-linux@googlegroups.com,
	Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH] qemu_fw_cfg: Make fw_cfg_rev_attr a proper kobj_attribute
Date: Thu, 25 Feb 2021 13:25:04 -0800
Message-Id: <161428829728.2305454.15456455443457551559.b4-ty@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210211194258.4137998-1-nathan@kernel.org>
References: <20210211194258.4137998-1-nathan@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=JjVphRv+;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::434
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

On Thu, 11 Feb 2021 12:42:58 -0700, Nathan Chancellor wrote:
> fw_cfg_showrev() is called by an indirect call in kobj_attr_show(),
> which violates clang's CFI checking because fw_cfg_showrev()'s second
> parameter is 'struct attribute', whereas the ->show() member of 'struct
> kobj_structure' expects the second parameter to be of type 'struct
> kobj_attribute'.
> 
> $ cat /sys/firmware/qemu_fw_cfg/rev
> 3
> 
> [...]

Applied to kspp/cfi/cleanups, thanks!

[1/1] qemu_fw_cfg: Make fw_cfg_rev_attr a proper kobj_attribute
      https://git.kernel.org/kees/c/f5c4679d6c49

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/161428829728.2305454.15456455443457551559.b4-ty%40chromium.org.
