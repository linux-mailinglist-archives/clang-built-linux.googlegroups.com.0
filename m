Return-Path: <clang-built-linux+bncBDYJPJO25UGBBK7ZQ35AKGQE5LZFVEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id B848024EA97
	for <lists+clang-built-linux@lfdr.de>; Sun, 23 Aug 2020 02:47:41 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id 130sf3129298pga.11
        for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 17:47:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598143660; cv=pass;
        d=google.com; s=arc-20160816;
        b=HkAGpqqbAQ59E7/SgJjJruQgCYpwtSxxps6W+rkqYtO3+FjUvGF37KDkiyP2PqDEZh
         /9ztC3hoXgYrJg3Zn5z8hETOMs0efLZC6GQkIvkLpmlsDMl1NVHAyssp38omZpma2VvC
         opkFFdILXXvfJ2Fmso9sYxpXen+VpoBucitaRiFJMQnDgcBTkQEJ66/Wa7LitPJmyrtd
         VdnwDq1hw71Lrd1GmF4Wr3oZOtNHBCmA03XHg5w96DrEqiWUrDX585NUP2R2t0Qzx7av
         nPQGNIvVSkn7rg73dZURTDROCIpL2fMMqu5eW1f0cUR3ORMW97uSvHeRrpGi/MV1dzEc
         VJXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=8Uqw79PO+BT6JxGrA/XQBjEQaK77zUFFvRM0uG0fWLc=;
        b=cTccj/SzNZxByAWzdj9zDXoaHl1hxvxnOp0aUubNwhyKRk2PCaqw2SirFT6vdAfL26
         SCMKrLkboqLylIme1DRMOqEyBfaWn6Cek94IKMcEk8TPyo7kabCpAW0XUJnZ4PX3TCgY
         TKmk1uPNvWBPk3LTSXs9nBWa9x6Qp97Gk7saJ5c4hRVVJ14JIFStQ6FF2UTjL0EoZ42D
         l7wAmKaS3DDPf27VBKumq8W+mjx4zml8jjeDQisk0hy4lLxYcZ6qndXdk0BKq2PB7EHm
         6T2/POuJ4+rEYZero3qh8OPHihYqdemgqTjpwOCN3LxG02b7TZtvLlTBZaGjixK6HTAG
         p/JQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Vi7isoy9;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8Uqw79PO+BT6JxGrA/XQBjEQaK77zUFFvRM0uG0fWLc=;
        b=B/ZlrMf3WexdCPacAnrggjvQs7h0wFpmTbIzGeQETGGo7Bljk/fiOuHLEZN2i9MyB7
         pro696rQqVa2+JTgvfoEVblft6PNX4HyWC1k0U/Ianvny56utqU2qgf5w/aOY13BovW+
         QdScZVDz2lyl0wDe+99DUiwvPiQHabyAqRBTS0tVRbd9oUFVAu7FGg7BSAiGcBsq1hTG
         fDZ5HWSbh7qa990nYOj4X2zdMQVK2Lgb1qo1KSBTcrVuHFuElmZb5qk+lgC+7rcNXaWy
         pdE/4Rvbiqozj53Yj8XZX0t6c6vhcVkCERh/FmxfDo2vyaNhBI4/lL9Znaqj75KvHjI0
         fRDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8Uqw79PO+BT6JxGrA/XQBjEQaK77zUFFvRM0uG0fWLc=;
        b=DNWLjV4JvbUuPgGeI2sWX0O1+p87c7uTfLrg1ZP9OBN54r1FOu1TJjBWcGNFWwmjZD
         9yCzPcq+rTtpzcvhfDpNABJ66Mb4WkUHQUMuGzOt+xHoXCKRcIXqhRIHMzsV2S+5rwmq
         vnV43iUwP3OKMngy0pFMxuwFfxkPtP2o3mrXpSRktqelSNGd6IxCJwoQSjlCMQACdKFp
         S13pSRHMG4+UByNLpa3mlcGzvEQj+x7gjKjGxhHfXc8sXxAwrNNlOUyl2liGb+O+rIw1
         iAaqSTBC3xRc1ax7v5qrRMgoqFjPaKV/Py3qhupG1vm3yd89D6y0Wt64WeTypL1O+BUS
         jhbw==
X-Gm-Message-State: AOAM531lsuOQI0gpjEZ01cowx+NnhafPOFNLfns3ZozhjVfTyiWBac5L
	YHlqSLs+eBmy0g214Nz6+OE=
X-Google-Smtp-Source: ABdhPJzwRM3O5WApTtZC9cHcJYWjPfIhN5lwrLdZApQqXEGUgadvEasOn4UlvPzhj8O5ykK49x60UA==
X-Received: by 2002:a17:90a:ca89:: with SMTP id y9mr413680pjt.108.1598143659883;
        Sat, 22 Aug 2020 17:47:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:88c4:: with SMTP id l187ls256764pfd.6.gmail; Sat, 22 Aug
 2020 17:47:39 -0700 (PDT)
X-Received: by 2002:a62:38cb:: with SMTP id f194mr7635463pfa.243.1598143659429;
        Sat, 22 Aug 2020 17:47:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598143659; cv=none;
        d=google.com; s=arc-20160816;
        b=p/rUghi/hxvbAbzMsEJxqyfnb++7hDKTCC3a1bTuhyjcNpcwy0r3XkFsqyGT11SLAB
         KHzsin/pOrD/xBSGnIrlFugzNVTykibtOENUHTPg73gcegNI2Ji8k+AuDxLndtnUyEgx
         RcF1Eja2EyffyabZ+Qvl80s4RWZpTgtVK/ytsY6p1PvdfrPB2rig609sbGveOby5bz+n
         xXUV/BYSHF7VBqUtv8YUl8VK/AWz3vXDlM22UbXiTItsfaWuzHQzdjuzAKwtmOQM/mtR
         EjP3T466VvdiNjkCgreoQLOGq6OF8gpgVwt1H8S0MXL6HvKQ7VSWgqXC/HcdNp/93qdf
         eAzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=uhjIrO61jeLA4z0GUtj1FtMpCz8Xcvx9fOtmkhhRjPw=;
        b=Mo5ztf/n52h/MsonbCNDgUNjhGbjreWy1kCvnEQXVLqLurCq7CYp+0hDJkLR+NuYxp
         Y/oraUyxHgo9hrQBV3KyzYDRc1ZfkI4T1PHjlvFFOkO/pqRGnHVKfjMcliwuAjBwc0ux
         Bdr3gKvVYsvBv8KDq69xPdKzWGbUZO3nyBc3vsRa24keRpD1cfKAVpSMvM6co/iO0Mhf
         /aUHJHBWyZk+z4jHvQ4tJNE1WoHitB1Ofbg+iYQHbi7YOdlgTqPecBT12dKcpq9gRjHP
         uMo+fovEh4FPqP9v7ZfqLgOtmIcrlDSqDWezOnIDc+9XDeCaecBQ1OQsunajqniXFCMn
         lv3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Vi7isoy9;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id i18si283273pju.2.2020.08.22.17.47.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Aug 2020 17:47:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id bh1so2535087plb.12
        for <clang-built-linux@googlegroups.com>; Sat, 22 Aug 2020 17:47:39 -0700 (PDT)
X-Received: by 2002:a17:902:a60e:: with SMTP id u14mr6163835plq.179.1598143658875;
 Sat, 22 Aug 2020 17:47:38 -0700 (PDT)
MIME-Version: 1.0
References: <20200822145618.1222514-1-masahiroy@kernel.org> <20200822145618.1222514-10-masahiroy@kernel.org>
In-Reply-To: <20200822145618.1222514-10-masahiroy@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Sat, 22 Aug 2020 17:47:28 -0700
Message-ID: <CAKwvOdnn=zK9yRtSMpbzWDzHZimvk=9u_kFD52wy1uprTwVkUg@mail.gmail.com>
Subject: Re: [PATCH v3 09/10] gen_compile_commands: remove the warning about
 too few .cmd files
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Nathan Huckleberry <nhuck@google.com>, 
	Tom Roeder <tmroeder@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Vi7isoy9;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644
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

On Sat, Aug 22, 2020 at 7:56 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> This warning was useful when users previously needed to manually
> build the kernel and run this script.
>
> Now you can simply do 'make compile_commands.json', which updates
> all the necessary build artifacts and automatically creates the
> compilation database. There is no more worry for a mistake like
> "Oh, I forgot to build the kernel".
>
> Now, this warning is rather annoying.
>
> You can create compile_commands.json for an external module:
>
>   $ make M=/path/to/your/external/module compile_commands.json
>
> Then, this warning is displayed since there are usually less than
> 300 files in a single module.
>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>
> Changes in v3:
>   - New patch
>
>  scripts/gen_compile_commands.py | 10 ----------
>  1 file changed, 10 deletions(-)
>
> diff --git a/scripts/gen_compile_commands.py b/scripts/gen_compile_commands.py
> index f370375b2f70..1de745577e6d 100755
> --- a/scripts/gen_compile_commands.py
> +++ b/scripts/gen_compile_commands.py
> @@ -21,11 +21,6 @@ _FILENAME_PATTERN = r'^\..*\.cmd$'
>  _LINE_PATTERN = r'^cmd_[^ ]*\.o := (.* )([^ ]*\.c)$'
>  _VALID_LOG_LEVELS = ['DEBUG', 'INFO', 'WARNING', 'ERROR', 'CRITICAL']
>
> -# A kernel build generally has over 2000 entries in its compile_commands.json
> -# database. If this code finds 300 or fewer, then warn the user that they might
> -# not have all the .cmd files, and they might need to compile the kernel.
> -_LOW_COUNT_THRESHOLD = 300
> -
>
>  def parse_arguments():
>      """Sets up and parses command-line arguments.
> @@ -236,11 +231,6 @@ def main():
>      with open(output, 'wt') as f:
>          json.dump(compile_commands, f, indent=2, sort_keys=True)
>
> -    count = len(compile_commands)
> -    if count < _LOW_COUNT_THRESHOLD:
> -        logging.warning(
> -            'Found %s entries. Have you compiled the kernel?', count)
> -
>
>  if __name__ == '__main__':
>      main()
> --
> 2.25.1
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnn%3DzK9yRtSMpbzWDzHZimvk%3D9u_kFD52wy1uprTwVkUg%40mail.gmail.com.
