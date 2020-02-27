Return-Path: <clang-built-linux+bncBCA2BG6MWAHBBNM64DZAKGQE6E6CXFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc39.google.com (mail-yw1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id BCB971727FB
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Feb 2020 19:49:26 +0100 (CET)
Received: by mail-yw1-xc39.google.com with SMTP id a16sf752376ywa.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Feb 2020 10:49:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582829365; cv=pass;
        d=google.com; s=arc-20160816;
        b=sSa3tJKlyVa+I2IaZIY05XOosrjdTQuN4+dpQBOr3Q86m14czpdMfriBuQL1il8qU7
         2psw8GFcW7n07awUnfGscfdEffHwg+fiThMlFTrTSyMTeyvpj5ikgv09CVIG7J8JZs8u
         fa7pCpYRC4sSMQaZ7dnfV1Il6jbm9Hhp2q2b5SEODciSOyiw7QbO1Pm+/i6rqsQSLGTI
         BVJ8fVsfuRo0kyyI5x63er03IFrGvbY/AbomkRldifYoBnvlq0rsDlWUtENBtHHUFZhn
         Oq5xHiM7NSsgJeeFi01pDMAf0cBUpMoG+wEKRBgc/2ZUWYxo4GQUlUQMNXHSVyS/JG3i
         WF1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=WLv84ouPgd5btZX5ApBSwSDCoV1r9Ow8OgbWFt6lnkQ=;
        b=eXBzAnGhtKhR3yHArL0y104Z1/YQ7MS+FTv9qZx8LTPOOUGWV8Fr7EgI+KRR/Cl+o8
         WeydSzwEEIeGw7HL09nKEfrz5ZuTkLwa3uKHA9yjZt/JQMSKcobiOMtA57p1GKlRSih7
         3QQMf0DpgWlvSSbICeNxR+PO3qeW6mZ/tAJdcvzI4l1wEyYmoUS+kT86QhoscNp1488i
         ZxsnG6Yy44h7jeaFH5uXB7/qVVb8wVfnvvMV5oeNnlpVTS0+T9WUFbxr83BZcHQOqHVI
         8RA/IbmGA41EYZGpEsy7zg7deRoVYS1lVXH1h9EMPdiMgv1bu14MuhOz2lJRn+4vOvqa
         r2+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XyXxJgve;
       spf=pass (google.com: domain of brendanhiggins@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=brendanhiggins@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WLv84ouPgd5btZX5ApBSwSDCoV1r9Ow8OgbWFt6lnkQ=;
        b=WlkYS5ePnc4OG+D3TQOorqrCBwxbDQeqyr/6UFM1djzLZ16SAkrbQNCnAGce+iUGgR
         +cyus67Gje96X6TnxzP1OFiK8DKb2m29UbYfs/QAPoOP7B1ftwcUx7xbxIfRsbKa8Qwi
         cD2uahGL8ybHG1jQa3EeCuvTCgx96BHX3+QWkYUD4daoxJIs0sfZFGx+hS3dAXWW9Kb1
         REiJK5UqdgyvlF9Yjngs5zodrC2FN3edhhp3acYG3W4FPxZ55gKCfbymPPe0qaGQhiHE
         pUD9NKe1sdWys7UrSALuwSkrHNut6ky1cle6pdFxtlktgL3wvcpvshe0lvMsv+ReD2Ja
         QMrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WLv84ouPgd5btZX5ApBSwSDCoV1r9Ow8OgbWFt6lnkQ=;
        b=nNndYi/GKeJtSrRLvpc3g6UbrBg4pJpt9WXfnuXCLzMFgVmhqVBswqifvH41FjQuFX
         6EfiBZaBIQJtvNPUE+yEX9t9sr/RuMNuUMI+Zr+1MPBAu07eE0n10SJTo9zJEx2y3kiS
         OqaPhvcCCVWdcckzrQsRIEbW+utUyIFLOFLKDREjBUAJUcEoaXHMnZpD+lU88CtvABNi
         gtOO482zdyXvWQ0/Y+Me4ujJdI485zqSE3aYVn07YmSrvd9ALbg2GzYn4UHZZt2Gexq4
         nOTLttW4y9O9jMA2L1vxnsnkL1qjQmuAwnx4PbwwixFKHYNifZUwQQ23PwhXkAjrOVvk
         UVFg==
X-Gm-Message-State: APjAAAXoei4/wYknVXki7ENeOfj2LZRpiZzpmOy/Cv+adDvllsNLEye8
	UHAAEyT6fnxPQ6oFBjn66AY=
X-Google-Smtp-Source: APXvYqzS+pXrUtgZHwrIkWFpAG5BXd4X72fDz1XIJwzd3gixPDAkfcVN3a7TfoxRG7RbkFfzA2gO9A==
X-Received: by 2002:a81:4e92:: with SMTP id c140mr823216ywb.410.1582829365742;
        Thu, 27 Feb 2020 10:49:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6902:72e:: with SMTP id l14ls68516ybt.11.gmail; Thu, 27
 Feb 2020 10:49:25 -0800 (PST)
X-Received: by 2002:a25:ba89:: with SMTP id s9mr41890ybg.265.1582829365388;
        Thu, 27 Feb 2020 10:49:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582829365; cv=none;
        d=google.com; s=arc-20160816;
        b=piIA6xFc48HRQ48L8a5mzL3dqooM8BDiQYn4/M6Wzq3+KEMXwZNS8gknYM6TLy0eC4
         O/L8/O+D9oZuSgBNX842DxOmDG+HrF2FjNoOKRpJ9QfOOGGb+6QL9Z80ctFq1fv6dNRf
         +25kqynKkwGG9OJeORX57GJwSUsR0Z1OeEbukHweMbiQo+eDS2fWNgU8k4rUpA6TyfAQ
         YH/nEBuE5W2twrcbTt7XNXsOE8GF6gFuwnl6aloe0FRJSL0Yi+/G9OJYYSvVAkX6QkyC
         xdVwlqROSFwvPyZClXSvxBMbwZLp7oSz+g4Wb+SsGW1H7qgK7UlLSxnb21Nde7kQ2D/m
         vEzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=sGeaLHlnGkG2EKVANYEasocr4XU2jYAIuDOZRJsT7Oo=;
        b=WfrE1haJ5f+RgEV19OuGy+cD5VHplZEt0vSS2IlzmpEHgCsTTPEHszJNIDIVwtgHzc
         yB06uTe3XFK+HgQWQlhcjJfAv7ITu9T6GqTKJel7M+6noWyW1nvb9HJYUOddB9yGfhGP
         xNcxVzWWD7FYZukq5Vc2e9R/qnL/z4MvdEDiUze6m2HdS+kHpdhbmUMZ6VFHOCxJDbW5
         b4CQ3AL7HgSlj33SAThczcAqCoacogi9h8vx072A3X10O0xdnUy3qkGawW2F1Lawbi09
         NlPVw46AVvIy7cENVW/t9pc5247/CUa02lhAVeuJCVbgHLTf99ITz7w0xNVAU5u6JShD
         hUdA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XyXxJgve;
       spf=pass (google.com: domain of brendanhiggins@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=brendanhiggins@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id o185si15576yba.0.2020.02.27.10.49.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Feb 2020 10:49:25 -0800 (PST)
Received-SPF: pass (google.com: domain of brendanhiggins@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id j9so277920pfa.8
        for <clang-built-linux@googlegroups.com>; Thu, 27 Feb 2020 10:49:25 -0800 (PST)
X-Received: by 2002:a63:fd17:: with SMTP id d23mr711822pgh.159.1582829364378;
 Thu, 27 Feb 2020 10:49:24 -0800 (PST)
MIME-Version: 1.0
References: <20200227063134.261636-1-gthelen@google.com>
In-Reply-To: <20200227063134.261636-1-gthelen@google.com>
From: "'Brendan Higgins' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 27 Feb 2020 10:49:13 -0800
Message-ID: <CAFd5g45X_jW6=8XZ8JY3iMgO1wc92wec4WsKCqJvDmjss5d=5A@mail.gmail.com>
Subject: Re: [PATCH] kunit: add --make_options
To: Greg Thelen <gthelen@google.com>
Cc: "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>, 
	KUnit Development <kunit-dev@googlegroups.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: brendanhiggins@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=XyXxJgve;       spf=pass
 (google.com: domain of brendanhiggins@google.com designates
 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=brendanhiggins@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Brendan Higgins <brendanhiggins@google.com>
Reply-To: Brendan Higgins <brendanhiggins@google.com>
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

On Wed, Feb 26, 2020 at 10:31 PM Greg Thelen <gthelen@google.com> wrote:
>
> The kunit.py utility builds an ARCH=um kernel and then runs it.  Add
> optional --make_options flag to kunit.py allowing for the operator to
> specify extra build options.
>
> This allows use of the clang compiler for kunit:
>   tools/testing/kunit/kunit.py run --defconfig \
>     --make_options CC=clang --make_options HOSTCC=clang
>
> Signed-off-by: Greg Thelen <gthelen@google.com>

Reviewed-by: Brendan Higgins <brendanhiggins@google.com>

Thanks! This is something we have been meaning to do for a while!

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAFd5g45X_jW6%3D8XZ8JY3iMgO1wc92wec4WsKCqJvDmjss5d%3D5A%40mail.gmail.com.
