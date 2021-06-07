Return-Path: <clang-built-linux+bncBDYJPJO25UGBB2XN7GCQMGQEGJU75NQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33c.google.com (mail-wm1-x33c.google.com [IPv6:2a00:1450:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id B57FF39E7B3
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Jun 2021 21:43:38 +0200 (CEST)
Received: by mail-wm1-x33c.google.com with SMTP id n21-20020a7bcbd50000b02901a2ee0826aesf258608wmi.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Jun 2021 12:43:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623095018; cv=pass;
        d=google.com; s=arc-20160816;
        b=VYg8E4hfNnw3LIHmvrfJGSd8SIw6VZ1tDuhWC+PxoM32rjtGEijFPYmKmVriP5Ccpb
         PbT7f6zbrdt0UeV4a9TNle6Agj/QUKpLcCzqa0s4l0lKD/0OaOKhoNLBNJ+W5QHMrMk/
         oJQQy4wxOCWE4IOwKJY7m7I2nfTzc5S6hDxgHGteomWh7nuzc+aFzag+wclsa+J3I2If
         ONlqgoqITX5Go7cRqQb2GEXYbfcDA5KkydXvMCA+0FFuo6HkIVis3adkk82l6qvD9ZRi
         1zx6ENsMqtdipTz8HXE4Gpm3ZDOmSWJEw9d74lTxaJWIw1OQ9MGOqnG42R+b9InVX5vY
         kEqA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=t8jtkTCsHMKGVltPmT1nBDauyYqIY46dW2TDkvsBEmE=;
        b=lgssEJR0o/JZbjyyugCQRBFnm4Y6VGYL/MRr2q7OaxWgRibjxaQ9PFwg1UfNofWSIS
         DAbDpdE6+QQ8lc0j964FkQcioaaNGD54PMqg6x1hAS0i0RSvxqSLYFYcf/1mcsInms/k
         huw6LG+zG1eYJluY3WmkmNA8LqXQzmbAOO2WEZwVIe2pmI9LyRMwpjNToOQA/QVXlTMh
         3H68yQzwbpbf7/OvKcqSHrM2QiRwS/C9Y1YOqa8lRx7mztHBg108/CN4b+oLfy+nuTZ8
         bJQ6M+yQfWpoXxXl08xQPRBThSgWgtkeaLMY8eqBoOIvjQ9WyUudP8YS/MjZOG5eLFpe
         L4jg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Vlvy3hLU;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=t8jtkTCsHMKGVltPmT1nBDauyYqIY46dW2TDkvsBEmE=;
        b=rPbGirlusE5l70NfFUzHZCiDEjOy3i88xHzCEd00N1QUK4FBm0KcsF3XQ7NaX0WH6E
         +fyb3s4AHVmxJyy4hmU0g/9XiCTl14Gngd3qRCp+LRtuVBl02N109FeWOV/UH2fR2MYE
         OFjadnttlIo9M07mgaYpNSUQEsGRi7zBPhVCboEJ+PLCN3n3mUCsdXw01xeB4vByS3wb
         txKDiMwLwpF+TnhGBg6R6q0utoFEiJyL+NtqX0ve1roPxUWxHuw/cf1wdNT0PqstonJG
         w//DdL4SXXgEnONKhfK1jJAp6yncxvCdMniX60Q+9Fp9KSKIFRDfV4qwiboZ53/sjJGd
         Vskw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=t8jtkTCsHMKGVltPmT1nBDauyYqIY46dW2TDkvsBEmE=;
        b=eJ0ddDOlZp1TyM4Q9+d726HrKg0kl+R+PO3qjqmmbx67aPFOw34fsmRtO3dSNzZhaX
         It/kGCecoWh1kOWXlVuCMUTzko8w5LxZ3Z9i6yGwNtHGDEeQo6ENKROn6BwLYXenfa5I
         tWLaEfi3ycj1gTsi0MR+83eq4yC0zXm1+l7b9o9KHA9/SGVefkSbUwywnALKxgGXTZ7Y
         ulcCJGffhZW+eDMF2nCv/LhQpF1W3h7BTpDsyRHfrvEnSFf9bU4h2djEJCo0GZv7b2+L
         D3mi3I6Yf9oi60eT5ELIWYn73MP4m+/u1cpzF6setSYatNZTXB+FYK8jSEeCMwD2cjxt
         aMVQ==
X-Gm-Message-State: AOAM5307mU4iZqlkUnuB7N0lAg/sTz9hvO7IR4Wm10AgeTdmaBh7rG8o
	Ue3UKtlTU4o/CqE3czRdv6g=
X-Google-Smtp-Source: ABdhPJwa+fhjG0RkJkje1Q3uh7yhD9EiSYRxOE3Ccg+5z+DcDsZgiAKs5nj3QHKte1wATS8dedN6Cw==
X-Received: by 2002:a05:600c:29a:: with SMTP id 26mr629096wmk.161.1623095018509;
        Mon, 07 Jun 2021 12:43:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:19d3:: with SMTP id u19ls166627wmq.3.canary-gmail;
 Mon, 07 Jun 2021 12:43:37 -0700 (PDT)
X-Received: by 2002:a1c:6503:: with SMTP id z3mr18414636wmb.72.1623095017762;
        Mon, 07 Jun 2021 12:43:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623095017; cv=none;
        d=google.com; s=arc-20160816;
        b=MShDF+DGiB8brfN+jZfLepC054tDue6/OUlJHrMzdmqbK+XUchyWUPMkatI8yuKRO/
         mgkGVMWyxwdxmXkBztrAq4yEyCRwxz9aC41fawyz9PAa39S7t5PFPKBW5MK0WrVx4kw6
         dvBpNUGgGQ829l1d0Pv6pSlkLpRgzXm2VmjeZmkzKyF/YpCdne3b81kn5tLulZinZUy4
         kF0YFT30lwG6D4EE1rOTyKlIBNK5zTNllwAHW2T86CwTtkha+jqhW76gdgp+UVppFKqp
         iPQ0ZNVYwfrIaON7C+p0PG/6TaOVsI4T0z1Qh4PaBRjFEVlOJUCm27UEj/1MI2kvP7+D
         NSWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=9JiE32U/StjKxoTO4FLGvGw8cUsT2laFpuKpk1BMz80=;
        b=jq+vpKyHaZae0QtbQUs25b8iCi5e57P78m4c1NvCjre3AtJXKlLYKuhvqoUdQj+Wl4
         aU+htNLhdHlExXaJwaV3rr0qIoWSAgqwdr6ahjIyANZ/RA3ZSZVK8Nfd2pfosHBQW3xf
         bvgaYvWOyVWLj+F7O0nYR/opn+W2SlICST2/lyKmsYGW+eDEydMLsjp/zNSSLDV7dZUT
         tgAGZRvX0V7bwGD23fVAvI1mFXyftLgUZM+aOED+HFqNEAEEYs3qJc7Mdt0LqikTlQVu
         MJQyWa67epbrYbWu3wpfa8c/D/2WVXjPJaYgLzEp2wjPYt4ozKNDKwcSUS1lhWO7b357
         8ztA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Vlvy3hLU;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com. [2a00:1450:4864:20::233])
        by gmr-mx.google.com with ESMTPS id v4si277994wrg.2.2021.06.07.12.43.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Jun 2021 12:43:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233 as permitted sender) client-ip=2a00:1450:4864:20::233;
Received: by mail-lj1-x233.google.com with SMTP id r16so4644065ljk.9
        for <clang-built-linux@googlegroups.com>; Mon, 07 Jun 2021 12:43:37 -0700 (PDT)
X-Received: by 2002:a2e:3c06:: with SMTP id j6mr15747889lja.495.1623095017044;
 Mon, 07 Jun 2021 12:43:37 -0700 (PDT)
MIME-Version: 1.0
References: <8aae1be7-d9bc-8a55-0bbb-0d94e6719baf@redhat.com>
In-Reply-To: <8aae1be7-d9bc-8a55-0bbb-0d94e6719baf@redhat.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 7 Jun 2021 12:43:25 -0700
Message-ID: <CAKwvOd=HtFtB=qtbRgWbTTBoBfe7eN7UBEWF6XEMWn7q8fYXGQ@mail.gmail.com>
Subject: Re: Recommendation for LTO type (thin or full) to use for Fedora
To: Tom Stellard <tstellar@redhat.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, 
	android-llvm-dev <android-llvm-dev@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Vlvy3hLU;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233
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

On Mon, Jun 7, 2021 at 12:36 PM Tom Stellard <tstellar@redhat.com> wrote:
>
> Hi,
>
> I'm working on adding an option to enable LTO in the Fedora kernel builds.  I'm
> not sure if I should use thin or full LTO, does anyone have any recommendations?
> What do most people use?

It looks like for AOSP LLVM we're using thin LTO:
https://android.googlesource.com/toolchain/llvm_android/+/refs/heads/master/builders.py#186.

I think that's the most reasonable tradeoff for generated code
performance vs build resources required.  Full LTO may produce a
faster binary, but I personally don't think it's worth the additional
build time cost.  YMMV
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DHtFtB%3DqtbRgWbTTBoBfe7eN7UBEWF6XEMWn7q8fYXGQ%40mail.gmail.com.
