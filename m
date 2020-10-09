Return-Path: <clang-built-linux+bncBC2ORX645YPRBKM2QP6AKGQE2AWRS6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3c.google.com (mail-oo1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 39943289A01
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Oct 2020 22:50:50 +0200 (CEST)
Received: by mail-oo1-xc3c.google.com with SMTP id o74sf4532980ooo.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Oct 2020 13:50:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602276649; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZJuEDNnyynyUZl5zbORSDKA4ElZTi7YZKH6/C1mhrvixjARZyUvrrYxzIvpT8WUeJA
         /VoTur0ao2/KbcFeWdMhX8eIORGrP3VTxg7jJHPyP8gLDo4yueA9Fd0gNyd2bzUSodvq
         8bAOj/xRLQFFa9+2wg8dJUOo7J0M6CAG4+K5pWep56uLtXKQPJZ+VpQFJaVA8pFNHOxr
         tFXZyWAObHEGxpDox823z1INaM1LoKk2Ayh3udmx+BvtVxyGo7t8dMIt+Yg7nvgmdfYt
         fHPB0TdJJ8X+lG08tQSBH1Un288W5+OanSi2Z690dLpofxHJ5mowRivJlHXp0XQBbLAX
         PJCA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=2XyrCv0n/365ap6jlGVLJ5o2NTBCdiTnW/NZD/HHMIw=;
        b=i2yhopmvFwetpZB9sIC7Y9287lUyx/XGklLIr1w3qCosUXZvh3WwRoDzfbvxOqVJ9B
         1gB6kSQdiR8WxJqmgbCA2AURVCfKgELukusUiJKjAY9x1nmHRR5aVk87NQklSRp6SKLS
         t5bluiP5fSkB7CvP+JqLi7yZG5YLBTmPV/nzTNDp3DaSVN0F6vx6YZjdnE/Mneg0aBeN
         wV0kGIf3G5d6s8A6VN07GHAy9lTtGsWuHsqnWYJPRnw5Xuc4fyQ92v2WGJPBICPuqkfA
         yuVfSN+HsAXRsaSqRoVVmv73XKntF+5BBiYnCi6DluCBtHbdxMNoJ+Rf+xU15+ktWdOb
         xQ3w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KqYQl09n;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=2XyrCv0n/365ap6jlGVLJ5o2NTBCdiTnW/NZD/HHMIw=;
        b=OW2cmE4JF7XHCBnI6d0clAAEy0kjUvQQmCDh8Qy+6SY1oz8uXogH2maAQ8H+GXC43N
         uNVepPZW5rouAg74ZnZE8HYxq/qWWBkl/76IX/7fjOOH7yT0kYLJe9Ii6UNybdA4t961
         O7sfCyG0of704QANIQ9eMx5JWcSPA6AsyF5kHMQg1m/O+Kcqa+vueQY0qG9xlybj5Ijt
         I2JpBrZDv42AQRHi9fMVYMAgQ/RY3TTRS5UFwCKjHU92p/qbh2puBl52biOequJ2bjQD
         z2vOlGtObXu/4eF2zWo6wTOHF9Ochlt/YdqfJyyBBdLtL61D8YGwaGwRm7bgGRcBMEJ1
         YxUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2XyrCv0n/365ap6jlGVLJ5o2NTBCdiTnW/NZD/HHMIw=;
        b=ZLX0+TYrqv8eK58Or03GU/yASrOj+Ak7vSUxkYw/UI5QDDQnXGQKXAC5RBxiQFLhb2
         eRS4a8AQsSJ7sj8DzJ+M6caYhlb7d5qQkGCqE9MIJeFQX+haOjSqdG1wHOjiSnqHMde5
         OMIrSC7h2IXISS7WjC4EnFjZKtKL8IMWod1rCgcnXLzgmzKCbSNEIQwJcysDbi0U4AIx
         Alwvmjz795B2DggZIFbY/86ud17O3qMXT5Xa/O6WpmznIjg9D+xV+sTx2KF5Ul8sHOuM
         1hN1krsL7gZyQGRmPYNaQJU4d9aALhMk2ftNOm0XguQCsIM8tW3cUfyYaQdPuHUOxgCU
         OsQQ==
X-Gm-Message-State: AOAM532+WWgt0CNSVdVnsTTa6V4Ffn22IkjfCILfbPaqNK/MsQSHUAp4
	LeS1rmxBeF+sm/Bbpim8DBk=
X-Google-Smtp-Source: ABdhPJzouaGWtUdGePghnYlfK8qwChr6yKPhdy6JINFrfqnGL5M7tV47QL8MeyXTfPw9s5KghBwVJQ==
X-Received: by 2002:a9d:baf:: with SMTP id 44mr10456249oth.171.1602276649110;
        Fri, 09 Oct 2020 13:50:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:c649:: with SMTP id w70ls2349428oif.3.gmail; Fri, 09 Oct
 2020 13:50:48 -0700 (PDT)
X-Received: by 2002:aca:5f89:: with SMTP id t131mr3743907oib.32.1602276648722;
        Fri, 09 Oct 2020 13:50:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602276648; cv=none;
        d=google.com; s=arc-20160816;
        b=jbThGzDs4IpIdQRAylZ3/GtxvQbZYSgFb9qSo9bR8dAJO61xUxxRLZjrLYrlDYEKLm
         unNF8tSnuX1E9Bx+d91CW6xzqxkLzILsNLlCSnJxx6EO77bPXryJncYzOFYOmKDHk/dG
         VZ7zV08I7wmTrwCJi/MHNgV6urunCM0zfz/EsXVnOPVCh+vLYYdoa2BNRg7qrcCZPskc
         H/ntEjzfdLEiDx4kCuFvSnG3HpEHjLFkJiCE4V5g2zj2ov5IHA64JyIehV8iXym9qYc6
         Bvi6qdzAYsG428uvBjnREMkimJtb2LS3FFQF0jtFgapR29Jj5/CYaqriPQwZY+lnO2jp
         DXvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=wTcVu4oETJELTBTO9Qx9E6QynJ2qRr0RMhI6Lss/kRo=;
        b=RZByykFbQahPpN5wExoqs0W01a71LzYJJM0c1LCBzuiyF3xYs0X4UYeNAAIosWTx+1
         A91BnShYAe/0MX6tKu/FUPzQ68lHxYLfzxtym+qTOwZqoIIsSlcEFCY6Wqu6nvR1LDzQ
         AQee44FS6qgjXqk0h6cfTmiehCNWs45QtmGsjGzjGNo+7/VsCnIEsdCHeC3IWBtlHib/
         I/4CLXlLHKh9azZ22EVSesMsOUhIxy+m/9OHTPJeJ+y+pL1WWECRfAcwrfZtTPIS+g3X
         yrxoJla8nZHDbljx4wwkf1Xv2MRfetRfGMhbAcsvbEG/5F/7wmbbxvNKZIu+UFAeU3pD
         AK/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KqYQl09n;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id r6si1695262oth.4.2020.10.09.13.50.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Oct 2020 13:50:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id o25so8196266pgm.0
        for <clang-built-linux@googlegroups.com>; Fri, 09 Oct 2020 13:50:48 -0700 (PDT)
X-Received: by 2002:a17:90b:19c9:: with SMTP id nm9mr6551747pjb.6.1602276647984;
        Fri, 09 Oct 2020 13:50:47 -0700 (PDT)
Received: from google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
        by smtp.gmail.com with ESMTPSA id n4sm10981225pgv.89.2020.10.09.13.50.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Oct 2020 13:50:47 -0700 (PDT)
Date: Fri, 9 Oct 2020 13:50:41 -0700
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	x86@kernel.org
Subject: Re: [PATCH v5 00/29] Add support for Clang LTO
Message-ID: <20201009205041.GA1448445@google.com>
References: <20201009161338.657380-1-samitolvanen@google.com>
 <CA+icZUVWdRWfhPhPy79Hpjmqbfw+n8xsgMKv_RU+hoh1bphXdg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+icZUVWdRWfhPhPy79Hpjmqbfw+n8xsgMKv_RU+hoh1bphXdg@mail.gmail.com>
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=KqYQl09n;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::542
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Fri, Oct 09, 2020 at 06:30:24PM +0200, Sedat Dilek wrote:
> Will clang-cfi be based on this, too?

At least until the prerequisite patches are merged into mainline. In the
meanwhile, I have a CFI tree based on this series here:

  https://github.com/samitolvanen/linux/tree/tip/clang-lto

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201009205041.GA1448445%40google.com.
