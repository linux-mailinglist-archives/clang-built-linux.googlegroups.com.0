Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBUGF336AKGQETR3KLZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id EB1E229A3A0
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 05:32:17 +0100 (CET)
Received: by mail-oi1-x23c.google.com with SMTP id l142sf85517oig.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 21:32:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603773137; cv=pass;
        d=google.com; s=arc-20160816;
        b=FFQjgcyWyYuX8ORYhdJ1+G6sm/UJk73bkOgD6EYli9Odoxuymq9CEgNiZiRF/+XayU
         UXocsEmgxNWROe5wC5kNFZOdL1WuwEtjMwANg7RhDo5+rFAbBdcV4PpfxY1dfNq8uvG+
         ZSFpiZr64JbI3IQKL79UNuy71Wy65O0YEpIdZPA/Relf0syVMvFVD1EBBcA/8aV318yO
         A2zLvgWj8pRjJ1DpQ00/zR3G+6GqfcVsQ7655yuyUXLx2i4a0Ft/iR1f/5WcPSBYn2fQ
         TmDpwiSvfSWEzvzgZ8cHfKhrEPsMAnhbx/sDnvmNdYGvDQFoCp5uDtkEQLCarE3OzQNn
         dHMg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=NWCgx0iymJLOlfgbDB6xvwyo7ofUpxS87j38MB/q2Tg=;
        b=FTHBnC4rM8d637VpF4tbe5Tb7HOIRnsttlubFXe2DoYJbpp+2PDNxV3sp8Ncy//iVE
         7Z1luz2lpV1loAbSbBSzZTHDstSEIYQSaGTL086jTYfH/8/7+lYETHxOsOVVIbGXrqbH
         d5R5UJda+zqTP2tpbd6CcQ0shuwF9WwrNc3Zs3C2BVaODoErbRRz92d8g3QgdpJkDwSm
         4b4jX1hlpmYRsv5Al//V5iiCvQh2Skh0Kvtfa2Fp8c6MvJxNiDDjIFafkEuD93CPU8s4
         7iu/lbV7NohIGTc4iKQEq1rpnJ7Ys6hc0QMGSmD/0cVnrFWGiclwtPN7mM3eVPEJvf59
         TJRw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SQ3l+NZD;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NWCgx0iymJLOlfgbDB6xvwyo7ofUpxS87j38MB/q2Tg=;
        b=fnwVy5/cb8K6J940o6ktJDNniyLUyfCdvzuJHQwjhA650jfrWzCMuVgpV6XIO74URr
         Eb3oD5GBMIz7vALKT3soAGjcBmBbXYWGG5zw2Oh0mj7I2cpqUOvHHYONy7D4MltpgJ/P
         Z2qw5vdyJy+XUusCf3OIZcyKNpBP915vwbR8TzNBZtId+ayvq2yjJXwmccpZHE4+GCUH
         XgSnP/Y0AH7lP4Cd4FjQrzOzCyCJfnZfn33Ska/+aU97DfyoiuL+SzmMtePsgV+0SVyN
         mz8hFHX/Bhfgwkjz/yQHo5/CSrG5hZXq3ljIaJ/wQUDs4Lxb9JErJVHX5K0Hc5gJcpeM
         yKBg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NWCgx0iymJLOlfgbDB6xvwyo7ofUpxS87j38MB/q2Tg=;
        b=tifwdWWRh8C24a5gz1eLC83/213rDF1jbr4MubF8//OzBV48RyCxFNnD3dAf/i2XHf
         LeZWbCeuFlHIPEknMwke5zgJKzB0MrBgr2QaWn0MYpSzSFfC/KkSE7geimbxigI3ZxNJ
         Xg7W3o3WIuijwncECOhmlSp+HtQ9mwxiXL5tmCWUBdedpiin9p4Fr/Xwm3SgUee8pP2U
         mx3rVsqAF35cPqXpqMbcAKpyEbdjxnQ40/DFelwbKMo+WvW42Ii7YVW7dsWva3Lm8YDY
         9igLcyc2qtz8exzu7uthfwCbLlRQyaUliT5aBPh7xDMXHZWhhSFVx9mNwjpnfnPYdyyv
         2Mpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=NWCgx0iymJLOlfgbDB6xvwyo7ofUpxS87j38MB/q2Tg=;
        b=aaaKdwTd3PCL8gftnMpttCdsI9U9hLe8Lc1oiQ3YMmctlFbUbyfwDmt+b69OGwGXg2
         KZq16s1UdKiKnkOsmA5uoLx2xr8GBzT3n2aIdOr8ErBnQYO2NskmA9e2f+gb0lwc3OXy
         z4bHjuBjpF6xt21mhgvlCHvp8KGNdlA8BK6vLwlfziER1+Qhrei8p58ANJbAAfesezuG
         3kkyXJwXzfvvH1Mh7eAS5ZDqcLt512Ry2ajI+fwG80BMPAZMP0gTjkqy19z+2daIUCzz
         brQNNbINGHU8WnyBPuZekkpL7oviyuO14CXcmtvGrnYSX9Q61sF0FprvEwT5aRDYNfPG
         z2yA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5326nOTPIth2RlwPLIldtu5W+Gd44776nFzNYruYOoxSjKrYFxBe
	Q/frSSw7rk8ZNN0LNvpOhvk=
X-Google-Smtp-Source: ABdhPJyF7GIZIif1kRDUOkdG+T7urV04O45uqT6/xgKPeuyM4bdw8RVB/comsuuVSPy3rcLEiwIJlg==
X-Received: by 2002:a9d:6c9a:: with SMTP id c26mr195827otr.78.1603773136814;
        Mon, 26 Oct 2020 21:32:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:750d:: with SMTP id r13ls34327otk.0.gmail; Mon, 26 Oct
 2020 21:32:16 -0700 (PDT)
X-Received: by 2002:a05:6830:18dc:: with SMTP id v28mr175224ote.356.1603773136489;
        Mon, 26 Oct 2020 21:32:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603773136; cv=none;
        d=google.com; s=arc-20160816;
        b=XI0XIWcXEvb8Bd6duKggKNsD0/nElJvgRE20KY+ZZiBniKWeiPRWrsTlMbIQu2V5g5
         eAw1uWU9Q0FTrCeyh5f8jpACWmWxVVV5/GMG9HF1WQVBoBhgsE5jjXmqHzwdDokt2EKZ
         /wHs5UjQTr5If+Ddfao3Xazr1vJzZg0rdssfwNxdi2x1p9cHQhZSIacxFXWzbEQFfYeT
         mIe83bWOsstBRrl7JprbtiSjzkL3D+B/f/uyNDFkW8VRgCLP+P5sSqRykYpFj0/3JfC+
         gr80gpZGrdz6sDM4ykoWudAf4DkMnLKjmNk60LntHNS9lSB7LI96M6H2XQNomjvm4qgk
         1T9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=zZNvqG1mmjJvDdd08tHMRAXLoOvkI7U3m+B+iJz61dM=;
        b=JgwDYtYS1yhSwsOc9jtst1wseFP2W8x65GNsSBswVQXyUTIRslZCUXW1Fx879TqB9V
         OPYWja2x94T58fQyrNtoiUsguMBFaInsC2HFS+QK7fzTr4KA1IGfWHpKiBKi6sxJCHoc
         QwC5jrYF5Y3PU6OxjWEVvkw9rbYeuvEGB/nFqpRXDYaBt1gMySd9YZfAOxZm1qVX07MM
         jzQOZJGgQaAs7APLvoDKTnRL6aCjvsiH2tBLe0UtBimEIAR0ckR/HRjjlnNASxj0PBXm
         SbWpsPEPMCZYWnJ9NsJexlyYASpfDpQQzybL10XfuniE2S4w3tivGB0qyb9Mlk+CbFEt
         jfSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SQ3l+NZD;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com. [2607:f8b0:4864:20::742])
        by gmr-mx.google.com with ESMTPS id w26si19825oih.1.2020.10.26.21.32.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Oct 2020 21:32:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) client-ip=2607:f8b0:4864:20::742;
Received: by mail-qk1-x742.google.com with SMTP id a23so97581qkg.13
        for <clang-built-linux@googlegroups.com>; Mon, 26 Oct 2020 21:32:16 -0700 (PDT)
X-Received: by 2002:a05:620a:a4c:: with SMTP id j12mr380131qka.263.1603773135866;
        Mon, 26 Oct 2020 21:32:15 -0700 (PDT)
Received: from ubuntu-m3-large-x86 ([2604:1380:45d1:2600::3])
        by smtp.gmail.com with ESMTPSA id t65sm125322qkc.52.2020.10.26.21.32.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Oct 2020 21:32:15 -0700 (PDT)
Date: Mon, 26 Oct 2020 21:32:13 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Arnd Bergmann <arnd@arndb.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 2/2] Makefile.extrawarn: limit -Wnested-externs to clang
Message-ID: <20201027043213.GA2342477@ubuntu-m3-large-x86>
References: <20201026220331.3896226-1-arnd@kernel.org>
 <20201026220331.3896226-2-arnd@kernel.org>
 <20201027014846.GA368335@ubuntu-m3-large-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201027014846.GA368335@ubuntu-m3-large-x86>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=SQ3l+NZD;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Oct 26, 2020 at 06:48:46PM -0700, Nathan Chancellor wrote:
> On Mon, Oct 26, 2020 at 11:03:14PM +0100, Arnd Bergmann wrote:
> > From: Arnd Bergmann <arnd@arndb.de>
> > 
> > The -Wnested-externs warning has become useless with gcc, since
> > this warns every time that BUILD_BUG_ON() or similar macros
> > are used.
> > 
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> 
> Also see:
> 
> 2486baae2cf6 ("objtool: Allow nested externs to enable BUILD_BUG()")
> 6cf4ecf5c51d ("perf build: Allow nested externs to enable BUILD_BUG() usage")
> 
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

Actually, just delete this line altogether. -Wnested-externs is a GCC
only warning, the flag is only present in clang for compatibility with
GCC:

https://clang.llvm.org/docs/DiagnosticsReference.html#wnested-externs

With that, my reviewed by still stands.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201027043213.GA2342477%40ubuntu-m3-large-x86.
