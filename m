Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBBFHZ5DZQKGQE7B2XUQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id DCDD319171A
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 18:00:04 +0100 (CET)
Received: by mail-wr1-x43b.google.com with SMTP id w11sf9502926wrp.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 10:00:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585069204; cv=pass;
        d=google.com; s=arc-20160816;
        b=fHrBrz7c0isCkjFcn08G5Oh6V3fEn1QhdfbabH8EMvmdh4u6DcU0kLVUjcxkvpVtQ5
         9nUo9GFXCqS6UW+DAM5okKgBzfcZFzUkXGzdKynlNnYl//uFQT8ioTY+J1NAFU2raiXB
         +L1ryNAIBaUI1Xaz5Hzep1UUujsP+OHsfTWLA5efVn4jJAM42fnePBASAefkkm5dk9co
         SmMXPszqY2TjwohCu/IN5FnklTbHq/n8qoFFVFYWBfnKzbpOo0TtYgKL37zK4IbkpIUd
         DnCAy7c8OdOXZGT14jxac9wMtPk5HsWHiboQ9GN2G9eFjlc6Y54JtqL2jtANNc136tKw
         aWkw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=8q6mAdTz/xCr8HYs6D8RZX8GX7Nm8k8oklSLdBPofdc=;
        b=iAoFVnrq90YdQAeqoOzzhUoNONYk9xJoS1mRjkZZ1UxNuIgAe1e+AMjZ0GnEv23ijx
         glniUfhAROSNADxgiiSKrJ2e1+M0RIsmvKMOtUxh2GGcddQtcoB8wLlW8z3Mrs+yIYTT
         JfG4sQLjRaOTBvQTyO0OY5f7vCryPoLqRvK4SOu7spyZNFIbfnFpAk0HqdVFiuiDioHN
         RUXw3PyIKBxnoVp64XWp22jSeVu3HBNmUT0ayotzxLqf/2Uq8N8wwenlXAbrhGsDFtjI
         fIvDRJCzu4aT83KArgt9rvNL95Az5jSY9Zo3KVrl8DtX9GOHEOBwh3mwaBH8M+lJ4o3t
         lD2w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=Z4pJJsNR;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::543 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8q6mAdTz/xCr8HYs6D8RZX8GX7Nm8k8oklSLdBPofdc=;
        b=CCzJvmnc/OVFPv+u+XZsbSHx/CFVvkrv1g4UkamPqCe+hqiXXdf/0Zm78Jn5UDrjzc
         01jfvc2BRkLu2LG1FwfaKAGvY2cnJvuNKW5JgJufFMDqvC92i1BjD2RPHadzZsYg76u3
         l0STeKeYssqXJe/QGjLNXCwgYXyYldHf2BC4CnCsu4YaiTlPw8hs4efM1zG+jnrWQzbA
         LT0IxGA6dRUW8NfS2ap4zQkRY+30PvZfdHufh0Xy77bCTglDO+8gBDNij6x6qygJNl3x
         kar/wY1PjKVsb9me1a2/tlvK/Rns6wCwDqOwDM3e3pR7FXjkfpjmalOw/r2f7vAw48AC
         Nsxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8q6mAdTz/xCr8HYs6D8RZX8GX7Nm8k8oklSLdBPofdc=;
        b=KoeI1+VVuL7obrJHIqVR9KTJNeggc+QoWuWsVKkBRu+Krts1MBmEvw5YqngZdwuBb2
         TlNsfE45bRCkY1crz0GNZVCVYg9mLx2VHO1uyB45BjIxHihGKqaqxFkTGnyx50l9aDd4
         3qIW5M/ORe9rWV+conAFBF2dts8mCiEs4DFjfibb8JwEWXRcL92CaS/iWJoK/Zy1LNIL
         pL6UmVziHIq2+m7qRNTahiM6UreRyUoTVf59vPI9iP/9s8WVqAiVI/HrHxUcUL2/0+Fu
         uI/kQqbZobR7yex6owClFaiTymKBaxkpFFZtpPEgpEqBCStgDaVsSs7qwml20sk1jOvN
         etRA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3dDjU5044FJ/87J9E+tB+N738pj8GX3LQUtG9Vb7MjmE/7ZfNU
	XV9LXJK7IloziM0hXI7wEa8=
X-Google-Smtp-Source: ADFU+vsw8K4V6su4XR+zaZOSKOZX/pclSseni1auDPNcfZXzcYgKCHcNM0GuQahIPIExPYqqvhK06A==
X-Received: by 2002:a05:600c:2146:: with SMTP id v6mr7041368wml.155.1585069204586;
        Tue, 24 Mar 2020 10:00:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:104d:: with SMTP id 13ls2150263wmx.1.gmail; Tue, 24
 Mar 2020 10:00:03 -0700 (PDT)
X-Received: by 2002:a7b:c1da:: with SMTP id a26mr7035982wmj.91.1585069203909;
        Tue, 24 Mar 2020 10:00:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585069203; cv=none;
        d=google.com; s=arc-20160816;
        b=vc0qcnKerhJ3jstJCfuzqZFBRiT3Shb1D4GZnk+XxRrsXNdpO9baI41h3DHhkH02G9
         r1z+899Q1yA4xxUSCUCr73kQ43jSTVQHzcVauPgrVQGxy78t5m3/XwpZ2om/lgXFqYOT
         UiRromC1mVmnK+lUXQo/tZhaLOj+fAD5eGJ2julAOxBPR5H79tf8VyWHYrBZHiMnO/bk
         54wPXoSdKS2waFSCHI0n5Q8KDz3EvzE6On6JHm9dCFsEefbl1UVY0s2/o7pYJLg7xx4P
         Qf2YgvrjzJKmgVyIKRPh+X3l4u2RHLJ7/73991P6T+OeJTaUburymirfTgb1fzXvbj6L
         ab/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=WsR634IM9mmhNsoHiRslx4q1ur3OKG9sqLOfW3mTlvE=;
        b=mIrVEmiJ29APYPonVV1eKrIIaq29uFtCC/96WXlhUl/SZ+tjponV35/ccBSFVRaaWU
         ZZiKWju9h4EhhM8Qbf6CQqw3HHA/y3DhM1Say/JisLkZ80bDJP+0tca9mhUbd26nRo8r
         m7+MkdopWdf6+UGa4z2S74aRjHFMtoYpsJNGS3/ta9mFo0w9R3ZuM49FEzp7xj8hivqZ
         Olv5fPvCRhQxYoQ95ZpWBX5wszjIsiGA/Mw9XyU0M4dow9MPYDnypjjC7PB2nfGVASpo
         LlDIGJfaz2A+gdK3WNj0i5fGsjiBO2jeV8Cb/wZ7rMM7yPKxxmIv1wgEwNbYpcCXQZ2G
         gTjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=Z4pJJsNR;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::543 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com. [2a00:1450:4864:20::543])
        by gmr-mx.google.com with ESMTPS id i22si123151wml.0.2020.03.24.10.00.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Mar 2020 10:00:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::543 as permitted sender) client-ip=2a00:1450:4864:20::543;
Received: by mail-ed1-x543.google.com with SMTP id z65so21576043ede.0
        for <clang-built-linux@googlegroups.com>; Tue, 24 Mar 2020 10:00:03 -0700 (PDT)
X-Received: by 2002:a50:af85:: with SMTP id h5mr28143554edd.300.1585069202992;
        Tue, 24 Mar 2020 10:00:02 -0700 (PDT)
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com. [209.85.208.54])
        by smtp.gmail.com with ESMTPSA id m18sm846673eda.14.2020.03.24.10.00.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Mar 2020 10:00:02 -0700 (PDT)
Received: by mail-ed1-f54.google.com with SMTP id e5so11562174edq.5
        for <clang-built-linux@googlegroups.com>; Tue, 24 Mar 2020 10:00:02 -0700 (PDT)
X-Received: by 2002:a05:6512:10cf:: with SMTP id k15mr17550349lfg.142.1585068727556;
 Tue, 24 Mar 2020 09:52:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200324084821.29944-1-masahiroy@kernel.org>
In-Reply-To: <20200324084821.29944-1-masahiroy@kernel.org>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 24 Mar 2020 09:51:51 -0700
X-Gmail-Original-Message-ID: <CAHk-=wjEi4VoT8qkBhrBtdZ27shyrPwo0ETpuOdxk5anHtQqhQ@mail.gmail.com>
Message-ID: <CAHk-=wjEi4VoT8qkBhrBtdZ27shyrPwo0ETpuOdxk5anHtQqhQ@mail.gmail.com>
Subject: Re: [PATCH 00/16] x86, crypto: remove always-defined CONFIG_AS_* and
 cosolidate Kconfig/Makefiles
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, "David S . Miller" <davem@davemloft.net>, 
	Kees Cook <keescook@chromium.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Herbert Xu <herbert@gondor.apana.org.au>, 
	Linux Crypto Mailing List <linux-crypto@vger.kernel.org>, Ingo Molnar <mingo@redhat.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Borislav Petkov <bp@alien8.de>, Peter Zijlstra <peterz@infradead.org>, 
	"H . Peter Anvin" <hpa@zytor.com>, "the arch/x86 maintainers" <x86@kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Daniel Vetter <daniel@ffwll.ch>, 
	David Airlie <airlied@linux.ie>, Jani Nikula <jani.nikula@linux.intel.com>, 
	Jim Kukunas <james.t.kukunas@linux.intel.com>, Jonathan Corbet <corbet@lwn.net>, 
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, NeilBrown <neilb@suse.de>, 
	Rodrigo Vivi <rodrigo.vivi@intel.com>, Yuanhan Liu <yuanhan.liu@linux.intel.com>, 
	dri-devel <dri-devel@lists.freedesktop.org>, intel-gfx@lists.freedesktop.org, 
	"open list:DOCUMENTATION" <linux-doc@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b=Z4pJJsNR;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::543 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

On Tue, Mar 24, 2020 at 1:49 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> If it is OK to queue this up to Kbuild tree,
> I will send a pull request to Linus.

Looks fine to me, assuming we didn't now get some confusion due to
duplicate patches (I think Jason got his tree added to -next already).

And yeah, that end result looks much better.

             Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3DwjEi4VoT8qkBhrBtdZ27shyrPwo0ETpuOdxk5anHtQqhQ%40mail.gmail.com.
