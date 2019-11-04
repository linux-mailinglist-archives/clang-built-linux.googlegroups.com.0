Return-Path: <clang-built-linux+bncBDYJPJO25UGBB4HNQHXAKGQEJJESRSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 27303EE7F6
	for <lists+clang-built-linux@lfdr.de>; Mon,  4 Nov 2019 20:07:30 +0100 (CET)
Received: by mail-pl1-x63c.google.com with SMTP id h7sf6481359pll.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 Nov 2019 11:07:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1572894448; cv=pass;
        d=google.com; s=arc-20160816;
        b=vI7OQKyVPgsVTIR313zrmM5q7A6HeOYG7jfA+5Zv12zT203ggh4TwcRa8z/4nl3pwa
         PqdmnW03+igX5SYoB1BHaalft5JpKlmIFRKTasbo0NCr8l1uVWuVJRbxhuO1wNQ5G+vt
         HpII1f0PINnY+PZ9RauCnojgSH/pmKAjW+9B4LT7Kp2pb451NfvYuEPNF1mWv5SLqu5o
         cITqPzSRm/NvgKLy3iCEGW2p9TJCI41WEo99/8eJRYLC6kedHV9Q4zV4ct5z8nFXk353
         3sYl0SNydHo/7bslkeQQjM0Xzz1+fbVUqWM618ikBk07wQ9l4Rv+42Vh/lyNWHE5ANll
         93gg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Tvr/MzsS5i6s9dKGZAEMVW3syuduQ4bcYPq/b7YofFQ=;
        b=ukHwRvDllv4Aj8XHGYlJPwfAmgfUvPKoDNX0ABj3J/YoVF6ea7GdbB1h2Mqy/+cCoP
         ZCDRud0apkkSxueY71XaTK/LVM0rpuAOfKfvaGX/HNXwGn/X5TWjKeTkFMh0YS8Pcgp1
         H7Iv9BcdABaQZwaLbcfJvaWMzooVNLCLyWTm1yH94JjfvOSMlkSFomGLFk80PpAH8i+X
         OQacoiN61ug2mg2PPGHdgGob5e3VNejGPusppvrLEaD0wW4jvHOacyMxMADyZMkispCz
         wl9057ZKsnSM/v1cpoBYa1tq/aqjtWL6gyz70/4BPrvaCHFE34vJcZWI2PuLkfMICuG+
         m2qQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KfC9yMED;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Tvr/MzsS5i6s9dKGZAEMVW3syuduQ4bcYPq/b7YofFQ=;
        b=Au5ZZBEDLM4Z0T0BOex4x8vf6rIg/pLVQPNsZoKiAJxmaW/Bfdn0wAF/3rh4by2DlZ
         uasZXIe6GJX/pGXr3fiXGfGgeXaWwrTB5zVQwwBboBrQ8KcPw59xmCtXixNiD/4hX6qw
         UNSSJxH/6vlSoGT8SFKKfqP+0A17QXFzrBEhjrf7DPnZ6bu7J3l0PIMp/dwjP0PeZy2k
         HzwqHqWprnD5c331Ks27ZC3edVLvU5sOIChp+T4khGyFrp/E58GGJfRjyYdkg5Yp3OGH
         LsT/xmgt9ykjXq618snrwnSgySUtVvP7F0cY7g0rfkWz+suxdQEJD4iG9hpz32FJ+1pm
         xFow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Tvr/MzsS5i6s9dKGZAEMVW3syuduQ4bcYPq/b7YofFQ=;
        b=ksZEWLoDUVi1YFHq+h8D9gc7gAGqdhU0kk9wk5ckbakUGsixVrQxl/iLd8IZKvpJq2
         wc5EGJH8UAvGbRAdcnYHYn0pT+jypmcav076/r/yOYKiYUV78WU4fAW4hwmhbY3o9h3+
         0Xe7YyPm4la6ghzwTGTWcFH84e1c0Zl7uASEXRojfeUDHhus9eDYi96dGu23LmrT1XAa
         6Z8CckzO5gnqqRcfLg27J73kCCcJmoICXHkE/6lEeFPVifQDBkBVutuyPZFTJYfmStyK
         Gav1iXD8uyrPQtpfoooHJxw21KYmBHxl0xqnk66RXF0vuyqnk3BcwH3vuwtR/UPNb5NJ
         6k6g==
X-Gm-Message-State: APjAAAU1hLnvzqGcKNpqnBzB5Q2Nl87nS0aZ9EuzpaWW/0vMnZJ7H1if
	aINWVjfNLW4PD5y8I3nK3n8=
X-Google-Smtp-Source: APXvYqw1yiqbEI0OaX58l6tXd9pVQExvS9+tQA51DU4BAiW9pXbDaPznfVhOPsvjSgRLLsuaes02ww==
X-Received: by 2002:a62:68c1:: with SMTP id d184mr23084986pfc.195.1572894448413;
        Mon, 04 Nov 2019 11:07:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:2144:: with SMTP id a62ls72008pje.5.canary-gmail;
 Mon, 04 Nov 2019 11:07:28 -0800 (PST)
X-Received: by 2002:a17:902:6942:: with SMTP id k2mr28751588plt.64.1572894447953;
        Mon, 04 Nov 2019 11:07:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572894447; cv=none;
        d=google.com; s=arc-20160816;
        b=XmOdpyOPjTS0YTePv+pgw8XzouHoAB7DNu3AZYsAhU+A+OtJfmcN1IZThhKdnXBMG8
         7i1+QssKfTyWurLVycH9mPgt0kfrkFW0y0aPyP9BVY0cLji1rzUVwRzQKZNCes55i87m
         xujFkAkUAU2x81APGm+wMZ5sQXAiHAy7GmgKFko1bskJHkHyaZvxhA6Sd9CluSxwIGZ6
         dSRqpz3yOD9aP/v/mske6DZNLYIjvv0TpKmRACcvB2y42rYfr1HkGXfMKVfGHykBtCI2
         bDe4phqMhibe7jD+MRjppsJaj9AoZbltOHRkvTzhjoph6lM54NNpqxxD333j7dg3CPCi
         usow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=qiT/RTwB3QsCtVvMpBuYQ/1nWBRVJkE25Jq2NSRmXeE=;
        b=sg8wF9CVGUi0JxtcVSVT4USIcI3VcNKKUlaCA4TL+kt1qiuh5Y0cGRISaabVmxfAnS
         wZwPLa1hZX7Hiu+eGTnIn1mt1g1oEqSdMQxirkquxqEpuD5173bBqht8MNBRxUGfNGAM
         /bX8cHBlbT6aPfreDYbISYXZMFvI3UirWb3sGS5Xfjz5hY/Ot0VIc+RvOS0IkjpbF/R4
         LyL6w/K81MpJ2/C6aeFrGdvYWq3yhS+tM15ACd/UxYk9yB11pCIVmmKNFq/dy7NU0QBe
         JzauE5j6UcbDd7+8OYQAhVy7zJN2+4SJTQ+sqg9VGkmo2fgBfDUA2Y15fwnoDiiyoCPE
         brZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KfC9yMED;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id h13si926680pjb.0.2019.11.04.11.07.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2019 11:07:27 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id q22so4391395pgk.2
        for <clang-built-linux@googlegroups.com>; Mon, 04 Nov 2019 11:07:27 -0800 (PST)
X-Received: by 2002:a17:90a:1f4b:: with SMTP id y11mr797567pjy.123.1572894447068;
 Mon, 04 Nov 2019 11:07:27 -0800 (PST)
MIME-Version: 1.0
References: <20191024201240.49063-1-natechancellor@gmail.com>
In-Reply-To: <20191024201240.49063-1-natechancellor@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 4 Nov 2019 11:07:15 -0800
Message-ID: <CAKwvOdm=L5z0Oqqa797Xsxk0M_=on3bEs7SZePZFNY9kLUU1Ug@mail.gmail.com>
Subject: Re: [PATCH] media: v4l2-device.h: Explicitly compare grpmask to zero
 in v4l2_device_mask_call_all
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=KfC9yMED;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
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

On Thu, Oct 24, 2019 at 1:17 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> When building with Clang + -Wtautological-constant-compare, several of
> the ivtv drivers warn along the lines of:
>
>  drivers/media/pci/cx18/cx18-driver.c:1005:21: warning: converting the
>  result of '<<' to a boolean always evaluates to true
>  [-Wtautological-constant-compare]
>                          cx18_call_hw(cx, CX18_HW_GPIO_RESET_CTRL,
>                                          ^
>  drivers/media/pci/cx18/cx18-cards.h:18:37: note: expanded from macro
>  'CX18_HW_GPIO_RESET_CTRL'
>  #define CX18_HW_GPIO_RESET_CTRL         (1 << 6)
>                                            ^
>  1 warning generated.
>
> This is because the shift operation is implicitly converted to a boolean
> in v4l2_device_mask_call_all before being negated. This can be solved by
> just comparing the mask result to 0 explicity so that there is no

s/explicity/explicitly/

Harmless enough change, thanks for the patch, and sorry for taking so
long to review.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> boolean conversion.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/752
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>
> I am aware that there is suddenly a style mismatch (some macros using
> !(grpmask) and this one using (grpmask) == 0) but I chose to display the
> minimal fix. If you want me to update all the macros to use this style,
> I'd be happy to in a followup patch.
>
> There are 19 of these warnings in the drivers/media/pci folder, which
> can be seen here:
>
> https://github.com/ClangBuiltLinux/linux/issues/488#issuecomment-545218125
>
> This is the simplest fix but if you all prefer an alternative one, I
> would be happy to see/review/test it. The ultimate goal is to get
> -Wtautological-compare enabled because there are several subwarnings
> that would be helpful to have and right now they are all disabled:
>
> https://github.com/ClangBuiltLinux/linux/issues/488
>
>  include/media/v4l2-device.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/include/media/v4l2-device.h b/include/media/v4l2-device.h
> index e0b8f2602670..8564b3227887 100644
> --- a/include/media/v4l2-device.h
> +++ b/include/media/v4l2-device.h
> @@ -431,8 +431,8 @@ static inline bool v4l2_device_supports_requests(struct v4l2_device *v4l2_dev)
>                 struct v4l2_subdev *__sd;                               \
>                                                                         \
>                 __v4l2_device_call_subdevs_p(v4l2_dev, __sd,            \
> -                       !(grpmsk) || (__sd->grp_id & (grpmsk)), o, f ,  \
> -                       ##args);                                        \
> +                       (grpmsk) == 0 || (__sd->grp_id & (grpmsk)), o,  \
> +                       f , ##args);                                    \
>         } while (0)
>
>  /**
> --


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm%3DL5z0Oqqa797Xsxk0M_%3Don3bEs7SZePZFNY9kLUU1Ug%40mail.gmail.com.
