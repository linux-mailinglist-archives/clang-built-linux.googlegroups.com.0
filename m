Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBH5QYGEAMGQEXEXAJEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id 662E13E3CFE
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Aug 2021 00:18:09 +0200 (CEST)
Received: by mail-io1-xd40.google.com with SMTP id j22-20020a5d9d160000b0290583f3b421c0sf10032582ioj.2
        for <lists+clang-built-linux@lfdr.de>; Sun, 08 Aug 2021 15:18:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628461088; cv=pass;
        d=google.com; s=arc-20160816;
        b=u/bRtu5R/BVuPm0IRedt7KEEF7TCc/mFrFqk20cJhvul4BSKtj4uoWX5x0l8lCP9hd
         +1ai5h4xqTROblAezaF4XSEAwaeyST8QtcOFgZ7BjLOb09j9bTnjw38XBY2N7azd/shW
         dS9Yw5oTfRYl26woYNDWcHV6icYJdYtUUBlKg1C5A32ekQOF5B1mz2qkXwEPNMY+xKE/
         UzjjeKueMT+NioS4+DSAezJMgyRPexvrGPPAkyJ5f7hcFONLUZMwdkR+2okSHuzzTpQG
         kivV+Ld8/xwcddolGgX80lQnhYnGYjnqGX1qcNVJJd/ueG1xvpB8aLOeTVct7WmwbYtD
         OXSw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=pwnFbuAdkkvAvWXmH74enzLx31CKhJ8XTpk28+8eeMc=;
        b=xF5hIamfZ2wT+fBYWyUym9PrkjsHLDpaI9ZgXZswCKBHJx3Tp8qKXlUQKq8mxZpFTe
         PRLr4nsyhyzOuQVNHyihl1ikjHR+WCkjMcxyDZY8s2mzsJbLe09ku+usfBVeVrWnT/m7
         CDDUjN708K2wH+/PL0+dEVqHPfUQNdPEWwJtGd45E1K/A+dyga8MqjWLHm00ogV7NXxQ
         BI/4pF26EpQ2Va+kW4E6SX6mXqePGYsEhiLotC84GxtYLJ9arBiDmGo5EigNHgnO4ZtT
         LfKtNMrR9umqpSBT2kMipkJeKg18msYCCbFRufJkBnxTkSMaow+QZ25p17LOtAqKEgVE
         Ipxw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=QwfCn3Kb;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pwnFbuAdkkvAvWXmH74enzLx31CKhJ8XTpk28+8eeMc=;
        b=VfvePqWDDc8VEPwVRAhfoDcrEk2uPDg9+GeX5Ad5ckCgmWba0vtpMplrdMYwaEZ1Ce
         bO6gJEk+zZP2dmRaDdv3zo8UJQOO2RsoDiD7tezpyquMh+khYt65HQjrFpbKSUXthc+C
         wg1Eiy37KE6hstzKU7jpG/amG6IXRrnF5yzPPCQcMD92gw4MHKa+dgAzndqC4L9NjlYD
         6v+b4Git0D+pqJ+dxisjOmCWbHgvUyVtj45jJC5NKkSTAx/QgHAA/JxX+2xqkCclgeaJ
         tIMd0Sd9XKviTxGYbk260V7kBGtk2zNF7ryQwkQ7lpqC4/rI8WUykWePv8FKK5FPw9sF
         Gr3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=pwnFbuAdkkvAvWXmH74enzLx31CKhJ8XTpk28+8eeMc=;
        b=bafWnizKy9FiadVDOg6dsnn0A2HfY78/thMXFeb+mYtpFrkw1SMuSMnKdHww7AzITN
         VQ7ghhRQ3xLKXkFWIcaUdFSSWZaTMjaaV10102mjXR/aqwl3k1oIA860g035yaUXhhXv
         1hMG58xXyUcJBMllkySYz9g3ZxbXsnTjlDAUZOqk4POmWDYZRihSvTzBkWgzA4ccoZe4
         7MIC8Xn82xEN4LH3N5Qt7jNnfw2Ds7seoPL6Q8HfIt6j/GIyahdtyb16jAWIOf+HLjhb
         pxsessZ1ahshzsJVvJ91vnqpZVYZ9TRYrffO+xFO5IT1EllLpL8I3pPPVpmW4aoBbnT5
         OQWw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531nGDegCBcoMckJoVuqog1+e/9Wr0igpIke+6sRPq2v74pdlp+s
	lpPof5MEzxtmIpcGXLTn1fA=
X-Google-Smtp-Source: ABdhPJxMYakC2R0DnzzSorHhUqldn3OjlUMSY44eShQ2HNelo8hJfZ4Aiy0Ee5BDpG35PEP26qndlw==
X-Received: by 2002:a02:95c7:: with SMTP id b65mr13225907jai.59.1628461088014;
        Sun, 08 Aug 2021 15:18:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:590e:: with SMTP id n14ls2276585iob.10.gmail; Sun, 08
 Aug 2021 15:18:07 -0700 (PDT)
X-Received: by 2002:a5e:a907:: with SMTP id c7mr15727iod.46.1628461087695;
        Sun, 08 Aug 2021 15:18:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628461087; cv=none;
        d=google.com; s=arc-20160816;
        b=jeg51QjsactvdXbMnitmBx6uNjW+JNMFOM6tADZqadBA5wx1d1NNh5mCJuiySMWKIa
         m6YmpmtmkqpoMViWBZKz/G75KtmISho9xlYvKy4qkcpvyBFB9Y4QaXiLndnaEykP8Pvd
         NVKE4sxL8H8O1u0fEY5pQ/iT/iNGd5+Olx4DKrU0gMOEXnG6bgogCgi6XJHzSKESbRrK
         NBILPb4e6ueZl8dQSrdVckRhvp7XBW+zX79YXC7xTrxqWQ4G4iIkWY3j61p096Zbd48r
         NOETi9n9ydJLL2kyJni2uDOVjR3KbX2wadckq4vFxZdSPpY+DmDpMk4idaFlbfWN/9v4
         F1xQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=4kG1mXWtWB69bM3i+ipzGpeiQaSj0wG4hutze7Mc17Y=;
        b=WBQTUaPi6C6eXFpKdXNh4xfTLP4vI6E5vDOt6Pa33MIpvLWX+FJZx17GR4st7KtD04
         fe4qAt2J8qyalaqmH/B2s9gKGqoprv+HaNlpcL7+JpXxSlzFBfEulOMJh1MRlxiGPwow
         6kzYeWc5W4Sw+RXm0Na06gTDfqrOv3prHcOfU1Eb5iWyiRNJXwctS6dLVCpA7K53jeFz
         1fZWscsfTbgdB+kstb9fMAp031PMgqu9/C0agHYXFbpWoD0+o2vhSPjoe6sPczvRthRS
         yKx2Uyejnfi/gB74MZ2ah6tsnMnfL8J33RmkI0TQHevTm1XQSYL4Xj/Q1kD3jcOuTcUJ
         jEjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=QwfCn3Kb;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k11si78215iov.3.2021.08.08.15.18.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Aug 2021 15:18:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 19A7A60F35;
	Sun,  8 Aug 2021 22:18:06 +0000 (UTC)
Date: Sun, 8 Aug 2021 15:18:04 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Maciej Falkowski <maciej.falkowski9@gmail.com>
Cc: natechancellor@gmail.com, ndesaulniers@google.com, masahiroy@kernel.org,
	michal.lkml@markovi.net, nhuck@google.com,
	clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] clang-tools: Print information when clang-tidy tool
 is missing
Message-ID: <YRBYHAJSpU5jcTQV@Ryzen-9-3900X.localdomain>
References: <CAK7LNAS=tyS22vk1mO7uCuzZ=YuzgByzC4Aix9JwugdV3xpr-Q@mail.gmail.com>
 <20210807110116.7985-1-maciej.falkowski9@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210807110116.7985-1-maciej.falkowski9@gmail.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=QwfCn3Kb;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Sat, Aug 07, 2021 at 01:01:16PM +0200, Maciej Falkowski wrote:
> When clang-tidy tool is missing in the system, the FileNotFoundError
> exception is raised in the program reporting a stack trace to the user:
> 
> $ ./scripts/clang-tools/run-clang-tools.py clang-tidy ./compile_commands.json
> multiprocessing.pool.RemoteTraceback:
> """
> Traceback (most recent call last):
>   File "/usr/lib64/python3.8/multiprocessing/pool.py", line 125, in worker
>     result = (True, func(*args, **kwds))
>   File "/usr/lib64/python3.8/multiprocessing/pool.py", line 48, in mapstar
>     return list(map(*args))
>   File "./scripts/clang-tools/run-clang-tools.py", line 54, in run_analysis
>     p = subprocess.run(["clang-tidy", "-p", args.path, checks, entry["file"]],
>   File "/usr/lib64/python3.8/subprocess.py", line 489, in run
>     with Popen(*popenargs, **kwargs) as process:
>   File "/usr/lib64/python3.8/subprocess.py", line 854, in __init__
>     self._execute_child(args, executable, preexec_fn, close_fds,
>   File "/usr/lib64/python3.8/subprocess.py", line 1702, in _execute_child
>     raise child_exception_type(errno_num, err_msg, err_filename)
> FileNotFoundError: [Errno 2] No such file or directory: 'clang-tidy'
> """
> 
> The patch adds more user-friendly information about missing tool:
> 
> $ ./scripts/clang-tools/run-clang-tools.py clang-tidy ./compile_commands.json
> Command 'clang-tidy' is missing in the system
> 
> Signed-off-by: Maciej Falkowski <maciej.falkowski9@gmail.com>
> Link: https://github.com/ClangBuiltLinux/linux/issues/1342

LGTM, I think this is much better than the stacktrace output as above as
it is easier for someone who is not familiar with these scrips to act
on.

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

> ---
> Hi Masahiro,
> 
> Thank you for your feedback!
> I am sorry that I haven't replied for so long.
> 
> I agree with your point, based on this I would like
> to propose a second version of the patch.
> 
> changes in v2:
>  - Solution has changed from LBYL style to EAFP
> 
> Best regards,
> Maciej Falkowski
> ---
>  scripts/clang-tools/run-clang-tools.py | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/scripts/clang-tools/run-clang-tools.py b/scripts/clang-tools/run-clang-tools.py
> index fa7655c7cec0..27ebe2f2069a 100755
> --- a/scripts/clang-tools/run-clang-tools.py
> +++ b/scripts/clang-tools/run-clang-tools.py
> @@ -67,7 +67,14 @@ def main():
>      # Read JSON data into the datastore variable
>      with open(args.path, "r") as f:
>          datastore = json.load(f)
> -        pool.map(run_analysis, datastore)
> +        try:
> +            pool.map(run_analysis, datastore)
> +        except FileNotFoundError as err:
> +            if err.filename == 'clang-tidy':
> +                print("Command 'clang-tidy' is missing in the system", file=sys.stderr)
> +                sys.exit(127)
> +            else:
> +                raise err
>  
>  
>  if __name__ == "__main__":
> -- 
> 2.26.3

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YRBYHAJSpU5jcTQV%40Ryzen-9-3900X.localdomain.
