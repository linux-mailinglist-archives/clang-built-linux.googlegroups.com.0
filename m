Return-Path: <clang-built-linux+bncBDNIR65Z3ENRBQOTTL2QKGQE7MWAVBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 632721BA03D
	for <lists+clang-built-linux@lfdr.de>; Mon, 27 Apr 2020 11:45:38 +0200 (CEST)
Received: by mail-qt1-x837.google.com with SMTP id f56sf19734218qte.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 27 Apr 2020 02:45:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587980737; cv=pass;
        d=google.com; s=arc-20160816;
        b=l9XtAqeuEIcaTdcWkHchaiPf4rLrrn7wG4NWp3lzwEe09nBpH4Jg0TvbeEqzyF9d+T
         Li07ZdaP+4eAos6E/c/eiGqdGnFkHTNDImEAWnrQCz3XaK7A8Lc5mTey0K6ODb+BeWfN
         RDxEtBQDYojmz0Ck4+jthM06VDOcAtqLBySCyQO7gTAqsbsrFx5w/CRWpfHOhtJdZrGo
         YdtApaK52H4asit6kvRlONTBN/Z462SanSflVYZH5KHiI//6JldkH2MhAK8GExITyoi2
         74FlzWsoAfq4be9DpwtS0mV07NHZKeor4vsdproooNcwaf1WvcQBBtm6lD/hX3Cwb0L1
         Pt3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=TEMI1Gyl1TJXfgWZdbwJ2BROgnsAn0O1QYkd0SqmuyI=;
        b=PYWHUY3/9ZV+ZoeHL7r4d8HOtrY+zL/QFV4si+Ut+GNycQjSV1Qtpg2zElT/CbGexM
         7zn2uZbeZ7tAZaWhiTBI4APeVg9ueKMrISxiLFDQMsKRzVo4+2IAZoEL7pFWzQX3fjOX
         I2ZMsYKLsbprYjgtr0G260XBtQ7zYTQIl+lcqpQL66SmIw7nt91E8RPwHq566aQ+a/8b
         qywYTQgc7wNAVyICj1dCmnOcd8hpDVI/olAzVFqWhpjE+xxd8bui1+p4MSX8KDQNwCqu
         Vbj/KJPNvMaD7oVY/rnLpZtzyVGpVAYpJT112aoQ8AhedyNJfnSZKfJuE/4MEL7gIx2N
         siUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@cloudflare.com header.s=google header.b="wkvZ/2OE";
       spf=pass (google.com: domain of lorenz@cloudflare.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=lorenz@cloudflare.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=cloudflare.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TEMI1Gyl1TJXfgWZdbwJ2BROgnsAn0O1QYkd0SqmuyI=;
        b=i+iPU2vSVPBQ6PWm/M77TgQf1HEZhVRNMXi/lNJwvjovwKTurpSrrpld3QvBs9h/7h
         RA0C4GYb8Daw18kL2Xeg71P1iTvKGH15iK4DuDismDpgPE9570fsdMgIOFT2YesqkD28
         +T7qhSi/hlNpXaTr/2GFvxpKSMb3aMXK7/JzpP/ueHbFF49mRyVNSfo2fzCWfDHAYBrA
         1ujlA/lsP5T+gzr+dqx0r/LGmlTSi4xYgFcfisrAQP3Udst0500/pNIKaHAabiuVdenk
         xuxLDRqjUXCoVlA2mbuJ2+wCANfsb0ZQ/mwX/AVukzeyUZCJDlK/KMALObPN4+Mnv/7G
         XPwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TEMI1Gyl1TJXfgWZdbwJ2BROgnsAn0O1QYkd0SqmuyI=;
        b=MqhfOLZ9HW702bJvA7aPUwNXt4YWn7srGSCKipK3Is58K1PWHYZpoqdJ4VWiY6IVId
         q0lmqosP1hLiOO3r8xrthxkbadFmvNWIIkJkR6Z1rWdCM6BOBFGKOox8lWgMhrG0BiBd
         9MKBPaoXPFW5atpfanQa2GM/+0rxWO59CE7ClDROhu+8vDlDx9rNye2dXpr3sg+jW9sY
         i8n2WLscy4b6HwVAlHScsBcCRDJ2CmVTOOoUURVBHl8ZbH/ACK3lxAexR46jYaq6sWBO
         TUAdJjURFWv+0UF1IMNotQq2QgdhQBgyD1DzLskzX+Ax5EP1oUtQAwjSUNPOhdYpB+hx
         ANTw==
X-Gm-Message-State: AGi0PuZH+6ONKJweUXWS0yU9b9mNvXLSSYXjjs31aJUt03CdnxGkgpmu
	8GfRcT7ne/OiJ7JXbTL31QQ=
X-Google-Smtp-Source: APiQypK8F99SKY9SqnZHAzKM2s9h3iY9d48G15b9/l0tI4pX32lbzZr6TIuhiOD0trFPm90NK+4KBQ==
X-Received: by 2002:a37:b3c1:: with SMTP id c184mr21081702qkf.194.1587980737104;
        Mon, 27 Apr 2020 02:45:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:9e17:: with SMTP id h23ls12590206qke.7.gmail; Mon, 27
 Apr 2020 02:45:36 -0700 (PDT)
X-Received: by 2002:a37:6317:: with SMTP id x23mr21033387qkb.218.1587980736737;
        Mon, 27 Apr 2020 02:45:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587980736; cv=none;
        d=google.com; s=arc-20160816;
        b=Imv9dALqHmVGvMTuRbAJRfSzUKQLcq6fi5AIdF1HTxwghL8egftFMBBJltY2feEstN
         OA51z/HGjUUNNsiJEEgUuJdTEGAM7MgZWiDLGPUbgq23IzOPNd87320kXtAJ3Q15CLbz
         NfqwOoec5Ix8FjehMeBMc1uStP1fNGYPxXCcofhce+qOjw+0gXNYimRf9a2r+2kZhiXo
         RbkGGsKfXuH9ICWdMdghyC7umG6w5F8/nCrBSfnucGcUqXV/YpcO7f5midEKubQih1gT
         FYYXW9KLyLkw9klIEUSnB6YckUy2bJzRaN2wPbrltoA+ItsE41d2CsQyUs611lZtIObD
         WptQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=p/dkv8siYLu4BZqbzo9AEk9hetqwaOBV9gfUD96SYV4=;
        b=fCPWw7I8d2BFaL0h6NoSzaKf77w2IPFG8LRZwMooMWYi3IQ/vD6UvoVQOQlbqOgt8Y
         J9VxcLKAKQcNTkcqag0OkAZagRW6soQzg9/jU/R5mcw/oFaCwOu5Few07Yxqk+/2L4m2
         rvWhXyv2WjW8FdPvrvuTo0GeKU5uLNAuE9aLU1W8ZCak8OEb3kzyPEjTXwWpkSFeS4mQ
         XzUYjPkvb5XLQohK9purrq+Sg8U8B3ooAXlANNazjKybRM1wp9hFdSzOXsuk3dNn3bID
         EnR+nIh/uXMvOFvjvYoIqwT/IuRiRVNGzJ/frfco0hpI7IcXT/EedgQp7dN4U89eYpev
         KcHg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@cloudflare.com header.s=google header.b="wkvZ/2OE";
       spf=pass (google.com: domain of lorenz@cloudflare.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=lorenz@cloudflare.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=cloudflare.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id o3si1106235qtm.0.2020.04.27.02.45.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Apr 2020 02:45:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of lorenz@cloudflare.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id 72so25128003otu.1
        for <clang-built-linux@googlegroups.com>; Mon, 27 Apr 2020 02:45:36 -0700 (PDT)
X-Received: by 2002:aca:5492:: with SMTP id i140mr13417819oib.13.1587980736077;
 Mon, 27 Apr 2020 02:45:36 -0700 (PDT)
MIME-Version: 1.0
References: <20200424185556.7358-1-lmb@cloudflare.com> <20200424185556.7358-2-lmb@cloudflare.com>
 <20200426173324.5zg7isugereb5ert@ast-mbp.dhcp.thefacebook.com>
In-Reply-To: <20200426173324.5zg7isugereb5ert@ast-mbp.dhcp.thefacebook.com>
From: "'Lorenz Bauer' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 27 Apr 2020 10:45:24 +0100
Message-ID: <CACAyw98nK_Vkstp-vEqNwKXtoCRnTOPr7Eh+ziH56tJGbnPsig@mail.gmail.com>
Subject: Re: [PATCH 1/1] selftests/bpf: add cls_redirect classifier
To: Alexei Starovoitov <alexei.starovoitov@gmail.com>
Cc: Shuah Khan <shuah@kernel.org>, Alexei Starovoitov <ast@kernel.org>, 
	Daniel Borkmann <daniel@iogearbox.net>, Theo Julienne <theojulienne@github.com>, 
	linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org, 
	Networking <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: lmb@cloudflare.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@cloudflare.com header.s=google header.b="wkvZ/2OE";       spf=pass
 (google.com: domain of lorenz@cloudflare.com designates 2607:f8b0:4864:20::343
 as permitted sender) smtp.mailfrom=lorenz@cloudflare.com;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=cloudflare.com
X-Original-From: Lorenz Bauer <lmb@cloudflare.com>
Reply-To: Lorenz Bauer <lmb@cloudflare.com>
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

On Sun, 26 Apr 2020 at 18:33, Alexei Starovoitov
<alexei.starovoitov@gmail.com> wrote:
>
> On Fri, Apr 24, 2020 at 07:55:55PM +0100, Lorenz Bauer wrote:
> > cls_redirect is a TC clsact based replacement for the glb-redirect iptables
> > module available at [1]. It enables what GitHub calls "second chance"
> > flows [2], similarly proposed by the Beamer paper [3]. In contrast to
> > glb-redirect, it also supports migrating UDP flows as long as connected
> > sockets are used. cls_redirect is in production at Cloudflare, as part of
> > our own L4 load balancer.
>
> This is awesome. Thank you for contributing!
> Applied.
>
> > There are two major distinctions from glb-redirect: first, cls_redirect
> > relies on receiving encapsulated packets directly from a router. This is
> > because we don't have access to the neighbour tables from BPF, yet. See
>
> Let's make it available then :)

Yes, I've been dragging my feet on this. It seems like the fib_lookup does
almost what we want, but I need to experiment with it. In the best case,
we'd have a helper that does the following:

* Try and find a neighbour
* Return it if one exists
* Otherwise, asynchronously trigger neighbour discovery (if it makes sense)
* And return the default gateway

I should probably start a new thread about this on the list.

>
> > The code base started it's life on v4.19, so there are most likely still
> > hold overs from old workarounds. In no particular order:
> >
> > - The function buf_off is required to defeat a clang optimization
> >   that leads to the verifier rejecting the program due to pointer
> >   arithmetic in the wrong order.
> >
> > - The function pkt_parse_ipv6 is force inlined, because it would
> >   otherwise be rejected due to returning a pointer to stack memory.
> >
> > - The functions fill_tuple and classify_tcp contain kludges, because
> >   we've run out of function arguments.
> >
> > - The logic in general is rather nested, due to verifier restrictions.
> >   I think this is either because the verifier loses track of constants
> >   on the stack, or because it can't track enum like variables.
>
> Have you tried undoing these workarounds to check the latest verifier?
> If they're still needed we certainly have to improve the verifier.
>
> > +#include "test_cls_redirect.skel.h"
>
> Do you use skeleton internally as well or was it just for selftests? ;)

Only for selftests :) Our internal tooling is all Go based. skeleton
is really nice
though, so I'll make sure to steal some ideas!

>
> > +_Static_assert(
> > +     sizeof(flow_ports_t) !=
> > +             offsetofend(struct bpf_sock_tuple, ipv4.dport) -
> > +                     offsetof(struct bpf_sock_tuple, ipv4.sport) - 1,
> > +     "flow_ports_t must match sport and dport in struct bpf_sock_tuple");
>
> Nice. I didn't realize clang supports it. Of course it should.
>
> > +/* Linux packet pointers are either aligned to NET_IP_ALIGN (aka 2 bytes),
> > + * or not aligned if the arch supports efficient unaligned access.
> > + *
> > + * Since the verifier ensures that eBPF packet accesses follow these rules,
> > + * we can tell LLVM to emit code as if we always had a larger alignment.
> > + * It will yell at us if we end up on a platform where this is not valid.
> > + */
> > +typedef uint8_t *net_ptr __attribute__((align_value(8)));
>
> Wow. I didn't know about this attribute.
> I wonder whether it can help Daniel's memcpy hack.

Yes, I think so.

> > +
> > +typedef struct buf {
> > +     struct __sk_buff *skb;
> > +     net_ptr head;
> > +     /* NB: tail musn't have alignment other than 1, otherwise
> > +     * LLVM will go and eliminate code, e.g. when checking packet lengths.
> > +     */
> > +     uint8_t *const tail;
> > +} buf_t;
> > +
> > +static size_t buf_off(const buf_t *buf)
> > +{
> > +     /* Clang seems to optimize constructs like
> > +      *    a - b + c
> > +      * if c is known:
> > +      *    r? = c
> > +      *    r? -= b
> > +      *    r? += a
> > +      *
> > +      * This is a problem if a and b are packet pointers,
> > +      * since the verifier allows subtracting two pointers to
> > +      * get a scalar, but not a scalar and a pointer.
> > +      *
> > +      * Use inline asm to break this optimization.
> > +      */
> > +     size_t off = (size_t)buf->head;
> > +     asm("%0 -= %1" : "+r"(off) : "r"(buf->skb->data));
> > +     return off;
> > +}
>
> We need to look into this one.
> This part is not gated by allow_ptr_leaks.
> if (dst_reg == off_reg) {
>         /* scalar -= pointer.  Creates an unknown scalar */
>         verbose(env, "R%d tried to subtract pointer from scalar\n",
>                 dst);
>         return -EACCES;
> }
> Hopefully not too hard to fix.
>
> > +
> > +static bool pkt_skip_ipv6_extension_headers(buf_t *pkt,
> > +                                         const struct ipv6hdr *ipv6,
> > +                                         uint8_t *upper_proto,
> > +                                         bool *is_fragment)
> > +{
> > +     /* We understand five extension headers.
> > +      * https://tools.ietf.org/html/rfc8200#section-4.1 states that all
> > +      * headers should occur once, except Destination Options, which may
> > +      * occur twice. Hence we give up after 6 headers.
> > +      */
> > +     struct {
> > +             uint8_t next;
> > +             uint8_t len;
> > +     } exthdr = {
> > +             .next = ipv6->nexthdr,
> > +     };
> > +     *is_fragment = false;
> > +
> > +#pragma clang loop unroll(full)
> > +     for (int i = 0; i < 6; i++) {
>
> unroll is still needed even with bounded loop support in the verifier?

I've just tried removing this on bpf-next. pkt_ipv4_checksum works
without the pragma,
pkt_skip_ipv6_extension_headers fails with the following message:

libbpf: load bpf program failed: Invalid argument
libbpf: -- BEGIN DUMP LOG ---
libbpf:
476: for (int i = 0; i < 6; i++) {
477: switch (exthdr.next) {
back-edge from insn 476 to 477
processed 0 insns (limit 1000000) max_states_per_insn 0 total_states 0
peak_states 0 mark_read 0

libbpf: -- END LOG --
libbpf: failed to load program 'classifier/cls_redirect'
libbpf: failed to load object 'test_cls_redirect'
libbpf: failed to load BPF skeleton 'test_cls_redirect': -4007
test_cls_redirect:FAIL:385
#10 cls_redirect:FAIL
Summary: 0/0 PASSED, 0 SKIPPED, 1 FAILED

>
>
> > +/* This function has to be inlined, because the verifier otherwise rejects it
> > + * due to returning a pointer to the stack. This is technically correct, since
> > + * scratch is allocated on the stack. However, this usage should be safe since
> > + * it's the callers stack after all.
> > + */
>
> Interesting. The verifier can recognize that ptr to stack can be safe in some cases.
> When I added that check I didn't think that the code can be as tricky as this :)
>
> > +static verdict_t process_ipv4(buf_t *pkt, metrics_t *metrics)
> > +{
> > +     switch (ipv4->protocol) {
> > +     case IPPROTO_ICMP:
> > +             return process_icmpv4(pkt, metrics);
> > +
> > +     case IPPROTO_TCP:
> > +             return process_tcp(pkt, ipv4, sizeof(*ipv4), metrics);
> > +
> > +     case IPPROTO_UDP:
> > +             return process_udp(pkt, ipv4, sizeof(*ipv4), metrics);
> > +
> > +     default:
> > +             metrics->errors_total_unknown_l4_proto++;
> > +             return INVALID;
> > +     }
> > +}
> > +
> > +static verdict_t process_ipv6(buf_t *pkt, metrics_t *metrics)
> > +     if (is_fragment) {
> > +             metrics->errors_total_fragmented_ip++;
> > +             return INVALID;
> > +     }
> > +
> > +     switch (l4_proto) {
> > +     case IPPROTO_ICMPV6:
> > +             return process_icmpv6(pkt, metrics);
> > +
> > +     case IPPROTO_TCP:
> > +             return process_tcp(pkt, ipv6, sizeof(*ipv6), metrics);
> > +
> > +     case IPPROTO_UDP:
> > +             return process_udp(pkt, ipv6, sizeof(*ipv6), metrics);
> > +
> > +     default:
> > +             metrics->errors_total_unknown_l4_proto++;
> > +             return INVALID;
> > +     }
> > +}
> > +
> > +SEC("classifier/cls_redirect")
> > +int cls_redirect(struct __sk_buff *skb)
> > +{
> ...
> > +     verdict_t verdict;
> > +     switch (encap->gue.proto_ctype) {
> > +     case IPPROTO_IPIP:
> > +             verdict = process_ipv4(&pkt, metrics);
> > +             break;
> > +
> > +     case IPPROTO_IPV6:
> > +             verdict = process_ipv6(&pkt, metrics);
> > +             break;
>
> The code flow looks pretty clean.
> I didn't find the copy-paste of ipv[46] -> tcp/udp
> you were mentioning.
> So that old issue is now gone?

The biggest offenders are fill_tuple (which is purely a hack) as well
as classify_tcp.
I'd really like to call classify_tcp from cls_redirect(), using saved
packet pointers and lengths.
Right now the function is called starting from process_ipv4 and
process_ipv6, which
means all of those arguments have to be passed down somehow.

-- 
Lorenz Bauer  |  Systems Engineer
6th Floor, County Hall/The Riverside Building, SE1 7PB, UK

www.cloudflare.com

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACAyw98nK_Vkstp-vEqNwKXtoCRnTOPr7Eh%2BziH56tJGbnPsig%40mail.gmail.com.
