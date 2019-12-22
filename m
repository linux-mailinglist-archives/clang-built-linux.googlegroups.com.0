Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBF6A7PXQKGQEOBJHV5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc39.google.com (mail-yw1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id D33C6128C73
	for <lists+clang-built-linux@lfdr.de>; Sun, 22 Dec 2019 04:16:40 +0100 (CET)
Received: by mail-yw1-xc39.google.com with SMTP id l12sf10342603ywk.6
        for <lists+clang-built-linux@lfdr.de>; Sat, 21 Dec 2019 19:16:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576984599; cv=pass;
        d=google.com; s=arc-20160816;
        b=nJp++VuBeVrjznJ/7U4ZYDu6xaFwfO4azEmOPAwSwkQ+46pQ7fmeWKECLPl2amRSHR
         HWenks3237XYmGB8IPd8A2EoXeXennELnaCQzeoZJVyShmWb6PJoOFuiCEIx4UUMPIiP
         KM4wZXGfF5LiDKw7cszmMfOVru3O+IZG/ljSe5skhi2k/CoUpYUZ0sj/eqYVJoiHijmz
         RMLxm3Z6pTHnDxuErRZZFnPoH/ji7/CqK2hxpavVTXecwN4keFCx+814IXMeMbkCLPZV
         J8Yow924tHnpxYDwFFNHeROoO/BwFhNOTucjH8L13XZPdo/wYAwchqVIhmpUvde5759Q
         3j0w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=Rb5mvw84p51QiO0flX8bx1X/fJR0KMUDg0ctZ6CnXYk=;
        b=D3WPTJrNOLXVmD8ZYWXwejwwFHy5O+Q+IltPAwVYDbLYAML3LHXs68Ohlp+r0zAN6g
         BOg3kcHllOz5QgnngShzuo1Kn8xC+/EcmxzJ5HUis/nKh4HPQjugjyT4jc1obFD1u9Ex
         81H0Cv3BTF3+g4wvuV2jKOGgplXVgR/BAr/6T0m8GlSTjvdkz6wse4dmlWtPNkKGOKvE
         FLnf6UCoe2+sviOniqy1KrT7VdSiuSvqnhWUDe2By7fXzWqBSVQV45OzW1y5Ri9ZIUY7
         kfjnqe2RanPSCnRcr0jJ3DcB+OGGL/lrF7cJ36C1jGEqGVWjBS3dTY56OIZFthTsbDu+
         fGCw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tAevvl82;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Rb5mvw84p51QiO0flX8bx1X/fJR0KMUDg0ctZ6CnXYk=;
        b=IKaulhmfaYFMpoyfs/1twvpyxGJ4S2w++T9yiOsvpgsfRqoo7C0sz8jboUSEM2eLn6
         nu8BIO4zVgWUfJjgw/CBIn9HbmO35bhAV3SZlW+hlkeqXS5KPoitdVi/r5tZhFy73/a8
         TJazli3OUn+tnTzJ0KU9X4hlW8SOPg55lr/gRAQkDFJXYDkQm+iNGDihJEjt5hNa8mEN
         8lDYD5hAe2SvV6dH2o0qVNb1tV30y+82r4TydtCuavbvmZiIEZMflLKed5EvKd2XFyoP
         TKLJ9Nt4lyRhaSuZfDId8CnaQBGSYQ9qWm0dEbttmbzxO28/ddrLVJMgeNMBU6B1oSEr
         5yHw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Rb5mvw84p51QiO0flX8bx1X/fJR0KMUDg0ctZ6CnXYk=;
        b=qN21XCLN8NnmEZWPg6Go1b+ES9kkHz+h15BvUKK/x5GXVcH+FU8iiOgzqJufVgK/VD
         6TSd6QTlQURM3O8dtqy1L8e1m0qguhDlQz73qRNb5d6R7xfIE0DaMrxHx1eamV3PEN/7
         UTJZr5qKKkuvl55jaELQvmXr6tUXDPHAoY4FGGVyr7e3jI5LrKvCsXu2q1lvtF8a2w2R
         alr58oH0UTlHMjPfIzvSNVpYgai7PQt59ZKQqzaHY2SMzj99ScMiFhXJgzHrCbXHWfih
         k4BfSyoZMsgxY1MG3fC5pZlRMBFKFxGbqrc2x/5UYmBDHgjNnwIgfkccDcJuUQ3ZNsAB
         so0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Rb5mvw84p51QiO0flX8bx1X/fJR0KMUDg0ctZ6CnXYk=;
        b=blKd5u/HRM5FVApoFD9jl0qUH9zqNFpPFI1U8/WqjeMKWEWAen7eNhmTJum32HT9Xc
         5OQSDa7/SuDz0QYTwtoS8LYFQIU3SGhtClE2JQ6tm/Cy8+wuG6MeLbVMeNwrRyvLzL9n
         kZZXKC5wxijU8wZJ0PCa6P8HYZgULZtCiZxb78DUlGmstGUn7YiME5lUxtzFOt7+nnVc
         RgJmTrhnF5Kzr+VdeobFS6/P0jQYREKjx2jaQg5JrsLcYFmxdngSWGKrpQy/gRY7oKdw
         wWtTW9tLY2g0GODKygzlS3LKuSU9e9xon8yv99yb3T+18rjKPqf8XIH29R+qB40PL25M
         A1OQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWRjjzJPtuoXsE5RTi2C++0Vdo/ZWXYN+sxU0KbQFK8547pbFXc
	qgmJa0+QXiprn7LjpxoJ1b0=
X-Google-Smtp-Source: APXvYqwaGYWcbsRSj7n/OvDDs+zc/hD0w4/0x6GjCLSMecEdCjgihvcUk8shQnlKppydGrNpp6aPUg==
X-Received: by 2002:a81:1d81:: with SMTP id d123mr17719495ywd.195.1576984599536;
        Sat, 21 Dec 2019 19:16:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:608b:: with SMTP id u133ls1938806ybb.3.gmail; Sat, 21
 Dec 2019 19:16:39 -0800 (PST)
X-Received: by 2002:a25:1641:: with SMTP id 62mr16903652ybw.461.1576984599097;
        Sat, 21 Dec 2019 19:16:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576984599; cv=none;
        d=google.com; s=arc-20160816;
        b=dug+M3FWWEft+R866bNHPxgkgV3hGwtenGqkHGmlX3chl1jzWfK57P3EbgbBX54wQd
         SgE6O8pDTjX34fdt77gREB9qTl9ymlGB3V5RsJH91IWN+5u2ZABErUkihtNvrkONOhTS
         9N1ZKYw+ocjCluFbg2gCNeoL5SC9w3G/o+rtPPqoHt9SD99i4zf9MW/2dBPRVRjYjzBg
         DTsD3JpPNyE9GfQPFWULt16ycLzpLcZP9vQDrhXw2G0h96+NfeioSSA396/sGn9W12ij
         fjMSF7usdIMBJyILUmca+gXE8IOg0wiwHijOMzgVAk/8RBG9RwrvkUK5wk/nt1rHNNN4
         nJaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=qXe+XyghJ3jT79+ErouNH+8TEIPALo+7YH6r7qsLX7A=;
        b=J20XVZS9MQlf9BnJlyDK+nwjyxBmzMGDsEk4j/2+X1Bvd1aJwRcMB8EGYBnKrh3dyE
         huEwnXsUpJTMqzG83gxduwY1fAfScA+sArYwGtKeFcWcKt//GiNBSbhHZpUmfZ4UWqlX
         S496YKnFd4hkQZy5+QYp/FP24ru75CvIACBN/fLrQvL/Yn+uV2oSgCuINGLVZhZuXfGH
         n1k+O77mvKhEoTCkkoNgmpWUJs9AaUhnr3ZeqspJF00b8vGPESUdJ/vPLPbLpkN/5JHu
         I+sL1Q23jkcV1HVGDNoV4n+CuCccDEQ6cH7+Tog2AT/NUK5uBrwcPOdxzStpr9X9znwe
         uwSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tAevvl82;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id e65si88687ybb.0.2019.12.21.19.16.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Dec 2019 19:16:39 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id 66so17359678otd.9
        for <clang-built-linux@googlegroups.com>; Sat, 21 Dec 2019 19:16:39 -0800 (PST)
X-Received: by 2002:a05:6830:3cb:: with SMTP id p11mr1304242otc.160.1576984598569;
        Sat, 21 Dec 2019 19:16:38 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id r25sm5470695otk.2.2019.12.21.19.16.37
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 21 Dec 2019 19:16:37 -0800 (PST)
Date: Sat, 21 Dec 2019 20:16:36 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: David Sterba <dsterba@suse.cz>
Cc: Al Viro <viro@zeniv.linux.org.uk>, linux-fsdevel@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2] vfs: Adjust indentation in remap_verify_area
Message-ID: <20191222031636.GA43673@ubuntu-m2-xlarge-x86>
References: <20191218035055.GG4203@ZenIV.linux.org.uk>
 <20191218051635.38347-1-natechancellor@gmail.com>
 <20191218110437.GJ3929@twin.jikos.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191218110437.GJ3929@twin.jikos.cz>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=tAevvl82;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Wed, Dec 18, 2019 at 12:04:37PM +0100, David Sterba wrote:
> On Tue, Dec 17, 2019 at 10:16:35PM -0700, Nathan Chancellor wrote:
> > Clang's -Wmisleading-indentation caught an instance in remap_verify_area
> > where there was a trailing space after a tab. Remove it to get rid of
> > the warning.
> > 
> > Fixes: 04b38d601239 ("vfs: pull btrfs clone API to vfs layer")
> > Link: https://github.com/ClangBuiltLinux/linux/issues/828
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > ---
> > 
> > v1 -> v2:
> > 
> > * Trim warning and simplify patch explanation.
> > 
> >  fs/read_write.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/fs/read_write.c b/fs/read_write.c
> > index 5bbf587f5bc1..c71e863163bd 100644
> > --- a/fs/read_write.c
> > +++ b/fs/read_write.c
> > @@ -1757,7 +1757,7 @@ static int remap_verify_area(struct file *file, loff_t pos, loff_t len,
> >  	if (unlikely(pos < 0 || len < 0))
> >  		return -EINVAL;
> >  
> > -	 if (unlikely((loff_t) (pos + len) < 0))
> > +	if (unlikely((loff_t) (pos + len) < 0))
> 
> Instead of just fixing whitespace, can we please fix the undefined
> behaviour on this line? pos and len are signed types, there's a helper
> to do that in a way that's UB-safe.
> 
> And btw here's a patch:
> 
> https://lore.kernel.org/linux-fsdevel/20190808123942.19592-1-dsterba@suse.com/

I do not particularly care how this warning gets fixed, just that it
does. I will review that patch like Nick did.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191222031636.GA43673%40ubuntu-m2-xlarge-x86.
