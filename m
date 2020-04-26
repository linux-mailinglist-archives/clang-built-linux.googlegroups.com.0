Return-Path: <clang-built-linux+bncBCUY5FXDWACRB2MLS72QKGQESLS5I7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 77C7C1B9219
	for <lists+clang-built-linux@lfdr.de>; Sun, 26 Apr 2020 19:33:30 +0200 (CEST)
Received: by mail-yb1-xb37.google.com with SMTP id w15sf17662974ybp.16
        for <lists+clang-built-linux@lfdr.de>; Sun, 26 Apr 2020 10:33:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587922409; cv=pass;
        d=google.com; s=arc-20160816;
        b=dDrzTJdzwhMFQ1QMjnC9QlzUZ9m9JC+nyWw9QtxlklbXhNu1RCuikDhVwEqU7D715s
         trssdyK7au6zJChkPy6v2zDIQNVfIAQONJOPi6vwPRSWWrP0vLogkFL6Xfvsa33PB01T
         SRsr9HyN72R25B+IF25lTxVdm22QlfKYVaAUls6D++Aw/UDzP47FP0mL2qW7/113XGWn
         Bzdg9YycQphVXZFldwsCkyMfAnpSGOpSjuNqqgSVS230ZWB6j9rXsNH+lWB1ihsXKDZ/
         FOQHT6ybBZZDcOvEfb2qSww4fHM4J0ggre4fLnzeeFnH0Avze/Wu/YBHCPCabacQHxTL
         orYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=F0LMcc+lP7Y17O1xV/E/YfRnXoIRHUBqmFpTFK4RrBY=;
        b=Y407FGpmd4p7B0Tj0dYO/N36uukw3QYJmQjDAqCoTq9KKyECnVV/KhL84cL5wuZAWS
         Vbw+fBGm6z1HZeq4dLJn6SzMTlz+vcTzAPgZ9y61LSLcHLmiUeNE0/TVjT98Guf6wHqF
         NBerNoiZjL82aad4P9g+vzusnw6tiFW8TR4/gd50KMh0AolvvFFDBvCT43GsJ4ZQngn8
         7kexvE2FHb8Dn/q4BE343bxixdDYTg+Yf7c2Eo2YGIxSMi340y4k0yfJUnRqbiD2Fdg9
         iQownY/V+8I61df4YGACs9FYo9F6vqtKgCMv8YYSxSG7waOgNa2XOw60i9MfmJtzPFK7
         5Ozw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=X9K7ifeZ;
       spf=pass (google.com: domain of alexei.starovoitov@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=F0LMcc+lP7Y17O1xV/E/YfRnXoIRHUBqmFpTFK4RrBY=;
        b=NTQw3gdDQ4szjenfmQXMroq/Y4aC0YG0Qk5Fz1HPgZEigRNOJ4nIQwCQic36iat4B9
         9xC7mVZPNRlWobQZQqMklB1RLvDrrh9PiVpRGIY121nf1kSviQychp5XvgKdFygqigwg
         6pcSiJU+qMhwFl48Ihi0mbifzbUGQ3aL6KkDKMjfyDqbRZ4HGWfU30nVLGIgpMhoFqP7
         lvTxBGxXERgE1m/DUE3ot92PCzm60A18an5PCehxa7EHZggDfKGyHPd15syEs2Ez2N0g
         ecRyVSu4P46qow8P/45y/FRqq/Hy4gYXtOe4Q46VKCQba2ysdRbY0ZJjmL5GV+8RT2ME
         +MPA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=F0LMcc+lP7Y17O1xV/E/YfRnXoIRHUBqmFpTFK4RrBY=;
        b=paoGSS3PNBVVAdMgFKg+soewRCnTisucTM6QOos+dKAX4CNtFJXJZhCYtlOD7ntKBE
         vwkNp702Cn2mNP95TsPHKuyuTi5H+NFCSU0a+MRvgOjHL6Rx+nnWfRaxpxb+j+dgs35O
         o2VGhYcl1wh/sCUt1MvdTHKN+7K3+qwrsdAyuVIprDlFZ+PelWLm/Uv85qVB6P7ce7Bo
         0Hilxm6aEyys34TqSkUqJj6PULErSRZvKmosGFuFO38peuS7NOpHLZ818wx3K/4XMoyV
         l3WiYK3eFGButx3CsKGlKDUYckiDJi7oV6nIkF2Y6I55d5L698YJtnUK8pQ2McpmVd8r
         MAvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=F0LMcc+lP7Y17O1xV/E/YfRnXoIRHUBqmFpTFK4RrBY=;
        b=LqsAM3qQwvu16+X5SgZZPPriYgZUPG+YsHLVhs8KJ4OQ9bOguGUzj/4KkY+kFuRIPI
         0At2MBGkb7XjZsWvRb53LSU2K82VU6oCqsJug9Lb2UIPeTZk7JrRUMdCKcy7H/nEh9ht
         +gxjLb+vFRn05CjPwOsAxadkOE4K0X1bt3h1DraDJB+tohcqQZOC/zqZwvp4ThdYYCOO
         ekV6FBjiLiIP0Gxi5lKRq94k5VBQy/ygOv9b8v7/n8L9DLreM4qiStOkMgIIj/NPv2WC
         sSXKLyRtqXCN9n0fxYm5Zefp/X4HmwGAededfoj4Zt0bM1sraWEH3padIUr7EA0b/qWI
         BQ4g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZw5b9YAVgAzcboXOI3zd7auR0nSpz93cj2U21x5IAG2L4YOchq
	6Xg+6lVCcaa67tsGK77X6UA=
X-Google-Smtp-Source: APiQypL5yDCIHpa2anjSkirHifXMTpn+BPejlh9wq2eSgJNmcnCRtnCjEz++VxzyHbSgUqfe+qeXaw==
X-Received: by 2002:a25:2d6:: with SMTP id 205mr31417119ybc.181.1587922409258;
        Sun, 26 Apr 2020 10:33:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:29c1:: with SMTP id p184ls5920334ybp.3.gmail; Sun, 26
 Apr 2020 10:33:28 -0700 (PDT)
X-Received: by 2002:a25:db87:: with SMTP id g129mr30801872ybf.491.1587922408829;
        Sun, 26 Apr 2020 10:33:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587922408; cv=none;
        d=google.com; s=arc-20160816;
        b=sAipsOC1hmsIwLEKK4szLoSGI4zAg+5Lnxe/zhoRE7BZt0HJoPI03zQpYI8hMkbeui
         7A8jWquH/VHHvuTPz+3qwF8mRGUUI0JbcxEzUsCGeqfitXw/CZTStx4koTWrSAEQlq87
         9IV8MCNxaSaBPvye6Ia1x9dYT10fBbDDNHX2voT9w+Ji2KgmLwRbGBgqBpAWIt8THz5e
         ozStLE/j8pM/jV07okiRrLDzQR3hR40i/Jf0kIkdg0BdqTtHatmjw36ueeZ63ajU5k64
         IcZVlkJ2Lp8y73EXXga2VvkakSi6DCmdtbZGwXrOWrsv6sW+lHVy6Ys5C4E2ZVJHRA49
         xdgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=0Ym0PI+p8r0uaVASqdly3gL8lO43LfRGsjZqN0Jm/io=;
        b=bmqmvk0svhbuCh9K9sVG48yUbk/6LeRo1w0YH5U8DFwWSnSuFeF/8tLrZn2Xbop3hL
         IMCfW2wufxohs9k/xaCSZSYvR267IgEq5Y5DSZ85GYFO9sAbKl+gzWcjcRR6zkgyBfKc
         ERTtnScySQM6rEG1U58Q9dD82LvFyudcl2mSmbeOFKYxcVPWpImHaksoBDzeH/lEUtNH
         hgkg1w9HbTkkg08AMo+KWHkuvztvuZ/GwUUD0nS4bViyiOTTTi+A+N3wVOeBz33bvcRo
         5owzUoH4qZW7GcVpWOecxD0+7/BwlvCQLO3O9rZVWq2ETC0jniBTUZ7DqNXcHKYcWzrH
         XHpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=X9K7ifeZ;
       spf=pass (google.com: domain of alexei.starovoitov@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id k128si657004ybf.1.2020.04.26.10.33.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Apr 2020 10:33:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexei.starovoitov@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id a31so4429628pje.1
        for <clang-built-linux@googlegroups.com>; Sun, 26 Apr 2020 10:33:28 -0700 (PDT)
X-Received: by 2002:a17:90a:d17:: with SMTP id t23mr19816040pja.77.1587922407856;
        Sun, 26 Apr 2020 10:33:27 -0700 (PDT)
Received: from ast-mbp.dhcp.thefacebook.com ([2620:10d:c090:400::5:9db4])
        by smtp.gmail.com with ESMTPSA id 82sm10163761pfv.214.2020.04.26.10.33.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Apr 2020 10:33:27 -0700 (PDT)
Date: Sun, 26 Apr 2020 10:33:24 -0700
From: Alexei Starovoitov <alexei.starovoitov@gmail.com>
To: Lorenz Bauer <lmb@cloudflare.com>
Cc: Shuah Khan <shuah@kernel.org>, Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>, theojulienne@github.com,
	linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org,
	netdev@vger.kernel.org, bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 1/1] selftests/bpf: add cls_redirect classifier
Message-ID: <20200426173324.5zg7isugereb5ert@ast-mbp.dhcp.thefacebook.com>
References: <20200424185556.7358-1-lmb@cloudflare.com>
 <20200424185556.7358-2-lmb@cloudflare.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200424185556.7358-2-lmb@cloudflare.com>
X-Original-Sender: alexei.starovoitov@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=X9K7ifeZ;       spf=pass
 (google.com: domain of alexei.starovoitov@gmail.com designates
 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
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

On Fri, Apr 24, 2020 at 07:55:55PM +0100, Lorenz Bauer wrote:
> cls_redirect is a TC clsact based replacement for the glb-redirect iptables
> module available at [1]. It enables what GitHub calls "second chance"
> flows [2], similarly proposed by the Beamer paper [3]. In contrast to
> glb-redirect, it also supports migrating UDP flows as long as connected
> sockets are used. cls_redirect is in production at Cloudflare, as part of
> our own L4 load balancer.

This is awesome. Thank you for contributing!
Applied.

> There are two major distinctions from glb-redirect: first, cls_redirect
> relies on receiving encapsulated packets directly from a router. This is
> because we don't have access to the neighbour tables from BPF, yet. See

Let's make it available then :)

> The code base started it's life on v4.19, so there are most likely still
> hold overs from old workarounds. In no particular order:
> 
> - The function buf_off is required to defeat a clang optimization
>   that leads to the verifier rejecting the program due to pointer
>   arithmetic in the wrong order.
> 
> - The function pkt_parse_ipv6 is force inlined, because it would
>   otherwise be rejected due to returning a pointer to stack memory.
> 
> - The functions fill_tuple and classify_tcp contain kludges, because
>   we've run out of function arguments.
> 
> - The logic in general is rather nested, due to verifier restrictions.
>   I think this is either because the verifier loses track of constants
>   on the stack, or because it can't track enum like variables.

Have you tried undoing these workarounds to check the latest verifier?
If they're still needed we certainly have to improve the verifier.

> +#include "test_cls_redirect.skel.h"

Do you use skeleton internally as well or was it just for selftests? ;)

> +_Static_assert(
> +	sizeof(flow_ports_t) !=
> +		offsetofend(struct bpf_sock_tuple, ipv4.dport) -
> +			offsetof(struct bpf_sock_tuple, ipv4.sport) - 1,
> +	"flow_ports_t must match sport and dport in struct bpf_sock_tuple");

Nice. I didn't realize clang supports it. Of course it should.

> +/* Linux packet pointers are either aligned to NET_IP_ALIGN (aka 2 bytes),
> + * or not aligned if the arch supports efficient unaligned access.
> + *
> + * Since the verifier ensures that eBPF packet accesses follow these rules,
> + * we can tell LLVM to emit code as if we always had a larger alignment.
> + * It will yell at us if we end up on a platform where this is not valid.
> + */
> +typedef uint8_t *net_ptr __attribute__((align_value(8)));

Wow. I didn't know about this attribute.
I wonder whether it can help Daniel's memcpy hack.

> +
> +typedef struct buf {
> +	struct __sk_buff *skb;
> +	net_ptr head;
> +	/* NB: tail musn't have alignment other than 1, otherwise
> +	* LLVM will go and eliminate code, e.g. when checking packet lengths.
> +	*/
> +	uint8_t *const tail;
> +} buf_t;
> +
> +static size_t buf_off(const buf_t *buf)
> +{
> +	/* Clang seems to optimize constructs like
> +	 *    a - b + c
> +	 * if c is known:
> +	 *    r? = c
> +	 *    r? -= b
> +	 *    r? += a
> +	 *
> +	 * This is a problem if a and b are packet pointers,
> +	 * since the verifier allows subtracting two pointers to
> +	 * get a scalar, but not a scalar and a pointer.
> +	 *
> +	 * Use inline asm to break this optimization.
> +	 */
> +	size_t off = (size_t)buf->head;
> +	asm("%0 -= %1" : "+r"(off) : "r"(buf->skb->data));
> +	return off;
> +}

We need to look into this one.
This part is not gated by allow_ptr_leaks.
if (dst_reg == off_reg) {
        /* scalar -= pointer.  Creates an unknown scalar */
        verbose(env, "R%d tried to subtract pointer from scalar\n",
                dst);
        return -EACCES;
}
Hopefully not too hard to fix.

> +
> +static bool pkt_skip_ipv6_extension_headers(buf_t *pkt,
> +					    const struct ipv6hdr *ipv6,
> +					    uint8_t *upper_proto,
> +					    bool *is_fragment)
> +{
> +	/* We understand five extension headers.
> +	 * https://tools.ietf.org/html/rfc8200#section-4.1 states that all
> +	 * headers should occur once, except Destination Options, which may
> +	 * occur twice. Hence we give up after 6 headers.
> +	 */
> +	struct {
> +		uint8_t next;
> +		uint8_t len;
> +	} exthdr = {
> +		.next = ipv6->nexthdr,
> +	};
> +	*is_fragment = false;
> +
> +#pragma clang loop unroll(full)
> +	for (int i = 0; i < 6; i++) {

unroll is still needed even with bounded loop support in the verifier?


> +/* This function has to be inlined, because the verifier otherwise rejects it
> + * due to returning a pointer to the stack. This is technically correct, since
> + * scratch is allocated on the stack. However, this usage should be safe since
> + * it's the callers stack after all.
> + */

Interesting. The verifier can recognize that ptr to stack can be safe in some cases.
When I added that check I didn't think that the code can be as tricky as this :)

> +static verdict_t process_ipv4(buf_t *pkt, metrics_t *metrics)
> +{
> +	switch (ipv4->protocol) {
> +	case IPPROTO_ICMP:
> +		return process_icmpv4(pkt, metrics);
> +
> +	case IPPROTO_TCP:
> +		return process_tcp(pkt, ipv4, sizeof(*ipv4), metrics);
> +
> +	case IPPROTO_UDP:
> +		return process_udp(pkt, ipv4, sizeof(*ipv4), metrics);
> +
> +	default:
> +		metrics->errors_total_unknown_l4_proto++;
> +		return INVALID;
> +	}
> +}
> +
> +static verdict_t process_ipv6(buf_t *pkt, metrics_t *metrics)
> +	if (is_fragment) {
> +		metrics->errors_total_fragmented_ip++;
> +		return INVALID;
> +	}
> +
> +	switch (l4_proto) {
> +	case IPPROTO_ICMPV6:
> +		return process_icmpv6(pkt, metrics);
> +
> +	case IPPROTO_TCP:
> +		return process_tcp(pkt, ipv6, sizeof(*ipv6), metrics);
> +
> +	case IPPROTO_UDP:
> +		return process_udp(pkt, ipv6, sizeof(*ipv6), metrics);
> +
> +	default:
> +		metrics->errors_total_unknown_l4_proto++;
> +		return INVALID;
> +	}
> +}
> +
> +SEC("classifier/cls_redirect")
> +int cls_redirect(struct __sk_buff *skb)
> +{
...
> +	verdict_t verdict;
> +	switch (encap->gue.proto_ctype) {
> +	case IPPROTO_IPIP:
> +		verdict = process_ipv4(&pkt, metrics);
> +		break;
> +
> +	case IPPROTO_IPV6:
> +		verdict = process_ipv6(&pkt, metrics);
> +		break;

The code flow looks pretty clean. 
I didn't find the copy-paste of ipv[46] -> tcp/udp
you were mentioning.
So that old issue is now gone?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200426173324.5zg7isugereb5ert%40ast-mbp.dhcp.thefacebook.com.
